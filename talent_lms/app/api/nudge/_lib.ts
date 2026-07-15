import { NextRequest, NextResponse } from "next/server";
import { supabase } from "@/lib/supabaseClient";
import { verifyEmployer, verifyCronOrEmployer } from "@/lib/serverAuth";
import {
  exceedsWeeklyCap,
  isOnCooldown,
  passesTrigger,
  type LearnerRow,
  type NudgeDbRule,
} from "@/app/ai-progress-summarizer/lib/nudgeEngine";
import {
  buildNudgeInputFromLearner,
  generateNudgeMessage,
  type NudgeChannel,
  type NudgeTone,
} from "@/app/ai-progress-summarizer/lib/nudgeGenerator";
import { sendNudge } from "@/app/ai-progress-summarizer/lib/channels";

export const WEEKLY_CAP = 3;

export async function requireEmployer(request: NextRequest) {
  const employer = await verifyEmployer(request);
  if (!employer) return { employer: null, response: NextResponse.json({ error: "Unauthorized" }, { status: 401 }) };
  return { employer, response: null };
}

export async function requireRunActor(request: NextRequest) {
  const employer = await verifyCronOrEmployer(request);
  if (!employer) return { employer: null, response: NextResponse.json({ error: "Unauthorized" }, { status: 401 }) };
  return { employer, response: null };
}

export function normalizeRuleBody(body: Record<string, unknown>) {
  return {
    name: body.name,
    enabled: body.enabled,
    trigger_risk_statuses: body.trigger_risk_statuses,
    trigger_min_days_inactive: body.trigger_min_days_inactive,
    trigger_completion_below: body.trigger_completion_below,
    trigger_deadline_within: body.trigger_deadline_within,
    trigger_course_id: body.trigger_course_id,
    schedule: body.schedule,
    schedule_time: body.schedule_time,
    schedule_days: body.schedule_days,
    channel: body.channel,
    cooldown_hours: body.cooldown_hours,
    message_mode: body.message_mode,
    message_tone: body.message_tone,
    message_template: body.message_template,
  };
}

export async function evaluateNudgeRun({
  employerId,
  dryRun,
  ruleIds,
  jobId,
}: {
  employerId: number;
  dryRun: boolean;
  ruleIds?: string[] | null;
  jobId: string;
}) {
  let rulesQuery = supabase
    .from("nudge_rules")
    .select("*")
    .eq("employer_id", employerId)
    .eq("enabled", true);

  if (ruleIds?.length) rulesQuery = rulesQuery.in("id", ruleIds);

  const { data: rules, error: rulesError } = await rulesQuery;
  if (rulesError) throw new Error(rulesError.message);

  const { data: learners, error: learnersError } = await supabase
    .from("learners")
    .select("*")
    .eq("employer_id", employerId);

  if (learnersError) throw new Error(learnersError.message);

  const results = [];

  for (const rule of (rules ?? []) as NudgeDbRule[]) {
    for (const learner of (learners ?? []) as LearnerRow[]) {
      const learnerId = learner.id ?? learner.user_id;
      if (!learnerId) continue;

      const base = {
        rule_id: rule.id,
        learner_id: learnerId,
        learner_name: learner.name ?? "Learner",
        course_name: learner.course_name ?? "Course",
        channel: rule.channel,
      };

      if (!passesTrigger(learner, rule)) {
        results.push({ ...base, status: "skip", reason: "trigger_mismatch" });
        continue;
      }

      const { data: lastNudge } = await supabase
        .from("nudge_log")
        .select("sent_at")
        .eq("employer_id", employerId)
        .eq("rule_id", rule.id)
        .eq("learner_id", learnerId)
        .order("sent_at", { ascending: false })
        .limit(1)
        .maybeSingle();

      if (isOnCooldown(lastNudge?.sent_at ?? null, rule.cooldown_hours)) {
        results.push({ ...base, status: "skip", reason: "cooldown" });
        continue;
      }

      const weekStart = startOfWeekIso();
      const { count: weeklyCount } = await supabase
        .from("nudge_log")
        .select("id", { count: "exact", head: true })
        .eq("employer_id", employerId)
        .eq("learner_id", learnerId)
        .gte("sent_at", weekStart);

      if (exceedsWeeklyCap(weeklyCount ?? 0, WEEKLY_CAP)) {
        results.push({ ...base, status: "skip", reason: "weekly_cap" });
        continue;
      }

      const message =
        rule.message_mode === "template" && rule.message_template
          ? applyTemplate(rule.message_template, learner)
          : await generateNudgeMessage(
              buildNudgeInputFromLearner(
                learner,
                rule.message_tone as NudgeTone,
                rule.channel as NudgeChannel
              )
            );

      if (dryRun) {
        results.push({ ...base, status: "send", message });
        continue;
      }

      let delivery: { success: boolean; error?: string } = { success: false, error: "unsupported channel" };

      if (rule.channel === "in-portal") {
        const { error } = await supabase.from("portal_notifications").insert({
          employer_id: employerId,
          learner_id: learnerId,
          message,
        });
        delivery = error ? { success: false, error: error.message } : { success: true };
      } else {
        delivery = await sendNudge({
          channel: rule.channel,
          to: learner.email ?? "",
          learnerName: learner.name ?? "Learner",
          courseName: learner.course_name ?? "Course",
          message,
        });
      }

      const logPayload = {
        employer_id: employerId,
        rule_id: rule.id,
        learner_id: learnerId,
        learner_name: learner.name ?? "Learner",
        learner_email: learner.email ?? "",
        course_name: learner.course_name ?? "Course",
        risk_status_at_send: learner.risk_status ?? learner.risk ?? "no-data",
        channel: rule.channel,
        message,
        status: delivery.success ? "sent" : "failed",
        failure_reason: delivery.error ?? null,
        job_id: jobId,
      };

      const { error: logError } = await supabase.from("nudge_log").insert(logPayload);
      results.push({
        ...base,
        status: delivery.success ? "sent" : "failed",
        reason: delivery.error ?? logError?.message,
        message,
      });
    }
  }

  return results;
}

export function applyTemplate(template: string, learner: LearnerRow): string {
  return template
    .replaceAll("{{name}}", learner.name ?? "Learner")
    .replaceAll("{{firstName}}", (learner.name ?? "Learner").split(" ")[0] ?? "Learner")
    .replaceAll("{{courseName}}", learner.course_name ?? "Course")
    .replaceAll("{{completionPct}}", String(learner.completion_pct ?? learner.completion ?? 0));
}

function startOfWeekIso() {
  const now = new Date();
  const day = now.getUTCDay();
  const diff = now.getUTCDate() - day + (day === 0 ? -6 : 1);
  const monday = new Date(Date.UTC(now.getUTCFullYear(), now.getUTCMonth(), diff));
  return monday.toISOString();
}
