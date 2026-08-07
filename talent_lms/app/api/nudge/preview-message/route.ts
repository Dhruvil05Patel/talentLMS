import { NextRequest, NextResponse } from "next/server";
import { supabase } from "@/lib/supabaseClient";
import {
  buildNudgeInputFromLearner,
  generateNudgeMessage,
  type NudgeChannel,
  type NudgeTone,
} from "@/app/ai-progress-summarizer/lib/nudgeGenerator";
import { applyTemplate, requireEmployer } from "../_lib";

export async function POST(request: NextRequest) {
  const { employer, response } = await requireEmployer(request);
  if (response) return response;

  const body = await request.json().catch(() => ({}));

  const { data: rule, error: ruleError } = body.rule_id
    ? await supabase
        .from("nudge_rules")
        .select("*")
        .eq("id", body.rule_id)
        .eq("employer_id", employer.id)
        .single()
    : { data: body.rule, error: null };

  if (ruleError || !rule) return NextResponse.json({ error: ruleError?.message ?? "Rule required" }, { status: 400 });

  let learnerQuery = supabase.from("learners").select("*").eq("employer_id", employer.id);
  if (body.sample_learner_id) learnerQuery = learnerQuery.eq("user_id", body.sample_learner_id);
  const { data: learner, error: learnerError } = await learnerQuery.limit(1).maybeSingle();

  if (learnerError || !learner) {
    return NextResponse.json({ error: learnerError?.message ?? "Sample learner not found" }, { status: 404 });
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

  return NextResponse.json({ message });
}
