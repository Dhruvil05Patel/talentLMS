import { AUTH_TOKEN_KEY } from "@/lib/auth";
import type { NudgeChannel, NudgeHistoryItem, NudgeRule, RiskStatus, RuleSchedule, RuleTone } from "../types/nudge";

type DbRule = {
  id: string;
  name: string;
  enabled: boolean;
  trigger_risk_statuses: RiskStatus[];
  trigger_min_days_inactive: number | null;
  trigger_completion_below: number | null;
  trigger_deadline_within: number | null;
  schedule: RuleSchedule;
  schedule_time: string | null;
  channel: NudgeChannel;
  cooldown_hours: number;
  message_mode: "ai-generated" | "template";
  message_tone: RuleTone;
  message_template: string | null;
  created_at?: string;
};

type DbLog = {
  id: number;
  learner_name: string;
  course_name: string;
  channel: NudgeChannel;
  status: "sent" | "failed" | "pending" | "queued" | "skipped";
  sent_at: string;
  rule_id?: string;
  message?: string;
  failure_reason?: string | null;
};

function token() {
  if (typeof window === "undefined") return null;
  return localStorage.getItem(AUTH_TOKEN_KEY);
}

async function request<T>(path: string, init?: RequestInit): Promise<T> {
  const authToken = token();
  if (!authToken) throw new Error("Missing auth token");

  const res = await fetch(path, {
    ...init,
    headers: {
      "Content-Type": "application/json",
      Authorization: `Bearer ${authToken}`,
      ...init?.headers,
    },
  });

  const data = await res.json().catch(() => ({}));
  if (!res.ok) throw new Error(data?.error ?? "Request failed");
  return data as T;
}

export async function fetchNudgeRules(): Promise<NudgeRule[]> {
  const data = await request<{ rules: DbRule[] }>("/api/nudge/rules");
  return data.rules.map(mapRule);
}

export async function fetchNudgeHistory(): Promise<NudgeHistoryItem[]> {
  const data = await request<{ items: DbLog[] }>("/api/nudge/log?pageSize=25");
  return data.items.map(mapLog);
}

export async function runNudges() {
  return request<{ job_id: string; results: unknown[] }>("/api/nudge/run", {
    method: "POST",
    body: JSON.stringify({ dry_run: false }),
  });
}

export async function dryRunNudges() {
  return request<{ job_id: string; results: Array<{ learner_name?: string; learner?: string; course_name?: string; course?: string; channel: NudgeChannel; status: "send" | "skip"; reason?: string }> }>("/api/nudge/dry-run", {
    method: "POST",
    body: JSON.stringify({}),
  });
}

export async function previewNudgeMessage(ruleId: string) {
  const data = await request<{ message: string }>("/api/nudge/preview-message", {
    method: "POST",
    body: JSON.stringify({ rule_id: ruleId }),
  });
  return data.message;
}

export async function sendTestEmail() {
  return request<{ success: boolean }>("/api/nudge/test-email", { method: "POST", body: JSON.stringify({}) });
}

function mapRule(rule: DbRule): NudgeRule {
  return {
    id: rule.id,
    name: rule.name,
    enabled: rule.enabled,
    riskStatuses: rule.trigger_risk_statuses,
    minInactiveDays: rule.trigger_min_days_inactive ?? 0,
    completionBelow: rule.trigger_completion_below ?? 100,
    deadlineWithin: rule.trigger_deadline_within ?? 999,
    course: "All Courses",
    group: "All Groups",
    schedule: rule.schedule,
    scheduleTime: rule.schedule_time ?? "09:00",
    timezone: "Local",
    channel: rule.channel,
    cooldownHours: rule.cooldown_hours,
    messageMode: rule.message_mode,
    tone: rule.message_tone,
    template: rule.message_template ?? undefined,
    lastRun: rule.created_at ?? "Never",
    sentCount: 0,
  };
}

function mapLog(log: DbLog): NudgeHistoryItem {
  return {
    id: String(log.id),
    ruleName: log.rule_id ?? "Nudge rule",
    audience: log.learner_name,
    channel: log.channel,
    status: log.status,
    createdAt: new Date(log.sent_at).toLocaleString(),
    engagement: log.course_name,
    notes: log.failure_reason ?? log.message ?? "",
  };
}

