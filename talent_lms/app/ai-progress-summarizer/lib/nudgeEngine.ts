export type RiskStatus = "on-track" | "at-risk" | "overdue" | "no-data";

export interface LearnerRow {
  id?: number;
  user_id?: number;
  name?: string;
  email?: string;
  course_id?: number;
  course_name?: string;
  completion_pct?: number;
  completion?: number;
  risk_status?: RiskStatus;
  risk?: RiskStatus;
  last_active?: string;
  lastActive?: string;
  deadline?: string;
}

export interface NudgeDbRule {
  id: string;
  trigger_risk_statuses: RiskStatus[];
  trigger_min_days_inactive?: number | null;
  trigger_completion_below?: number | null;
  trigger_deadline_within?: number | null;
  trigger_course_id?: number | null;
  cooldown_hours: number;
  channel: string;
  message_tone: string;
  message_mode: string;
  message_template?: string | null;
}

export function passesTrigger(learner: LearnerRow, rule: NudgeDbRule, now = new Date()): boolean {
  const risk = learner.risk_status ?? learner.risk ?? "no-data";
  if (!rule.trigger_risk_statuses.includes(risk)) return false;

  const lastActiveValue = learner.last_active ?? learner.lastActive;
  if (rule.trigger_min_days_inactive != null && lastActiveValue) {
    const lastActive = new Date(lastActiveValue);
    const daysInactive = Math.floor((now.getTime() - lastActive.getTime()) / 86400000);
    if (daysInactive < rule.trigger_min_days_inactive) return false;
  }

  const completion = learner.completion_pct ?? learner.completion ?? 0;
  if (rule.trigger_completion_below != null && completion >= rule.trigger_completion_below) return false;

  if (rule.trigger_deadline_within != null && learner.deadline) {
    const deadline = new Date(learner.deadline);
    const daysToDeadline = Math.floor((deadline.getTime() - now.getTime()) / 86400000);
    if (daysToDeadline > rule.trigger_deadline_within) return false;
  }

  if (rule.trigger_course_id != null && learner.course_id !== rule.trigger_course_id) return false;

  return true;
}

export function isOnCooldown(lastNudgeSentAt: Date | string | null, cooldownHours: number, now = new Date()): boolean {
  if (!lastNudgeSentAt) return false;
  const sentAt = typeof lastNudgeSentAt === "string" ? new Date(lastNudgeSentAt) : lastNudgeSentAt;
  const elapsed = (now.getTime() - sentAt.getTime()) / 3600000;
  return elapsed < cooldownHours;
}

export function exceedsWeeklyCap(nudgesThisWeek: number, maxPerWeek: number): boolean {
  return nudgesThisWeek >= maxPerWeek;
}

export function daysInactive(learner: LearnerRow, now = new Date()): number {
  const lastActiveValue = learner.last_active ?? learner.lastActive;
  if (!lastActiveValue) return 0;
  return Math.max(0, Math.floor((now.getTime() - new Date(lastActiveValue).getTime()) / 86400000));
}

