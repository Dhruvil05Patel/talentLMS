export type NudgeChannel =
  | "email"
  | "slack"
  | "whatsapp"
  | "in-portal"
  | "in-app";

export type RuleSchedule =
  | "manual"
  | "daily"
  | "weekly";

export type RuleTone =
  | "encouraging"
  | "urgent"
  | "neutral";

export type RiskStatus =
  | "on-track"
  | "at-risk"
  | "overdue";

export type DeliveryStatus =
  | "sent"
  | "failed"
  | "pending"
  | "queued"
  | "skipped";

export type NudgeTab =
  | "overview"
  | "rules"
  | "history"
  | "settings";

export interface NudgeRule {
  id: string;

  name: string;

  audience?: string;

  trigger?: string;

  cadence?: string;

  successRate?: number;

  message?: string;

  status?: "active" | "paused" | "inactive";

  enabled: boolean;

  riskStatuses: RiskStatus[];

  minInactiveDays: number;

  completionBelow: number;

  deadlineWithin: number;

  course: string;

  group: string;

  schedule: RuleSchedule;

  scheduleTime: string;

  timezone: string;

  channel: NudgeChannel;

  cooldownHours: number;

  messageMode:
    | "ai-generated"
    | "template";

  tone: RuleTone;

  template?: string;

  lastRun: string;

  sentCount: number;
}

export interface NudgeHistory {
  id: number;

  learner: string;

  learnerAvatar: string;

  learnerEmail: string;

  course: string;

  channel: NudgeChannel;

  message: string;

  sentAt: string;

  status: DeliveryStatus;

  ruleName: string;
}

export interface UpcomingRun {
  id: string;

  ruleName: string;

  schedule: string;

  nextRun: string;
}

export interface ConnectedChannel {
  channel: NudgeChannel;

  connected: boolean;

  provider: string;

  details: string;
}

export interface OverviewStats {
  totalSent: number;

  sentThisWeek: number;

  weeklyGrowth: number;

  activeRules: number;

  reengagedLearners: number;
}

export interface DryRunResult {
  learner: string;

  course: string;

  channel: NudgeChannel;

  status:
    | "send"
    | "skip";

  reason?: string;
}

export interface NudgeHistoryItem {
  id: string;

  ruleName: string;

  audience: string;

  channel: NudgeChannel;

  status: DeliveryStatus;

  createdAt: string;

  engagement: string;

  notes: string;
}

export interface NudgeSettings {
  quietHours: string;

  timezone: string;

  sendDigest: boolean;

  dryRunMode: boolean;

  defaultChannel: NudgeChannel;
}

export interface NudgePreview {
  title: string;

  body?: string;

  tone: "success" | "warning" | "neutral";
}
