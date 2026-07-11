import { NudgeHistoryItem } from "../types/nudge";

export const mockHistory: NudgeHistoryItem[] = [
  {
    id: "history-1",
    ruleName: "Compliance deadline nudge",
    audience: "All learners",
    channel: "slack",
    status: "sent",
    createdAt: "Today 10:30",
    engagement: "62% opened",
    notes: "Best performance on Slack so far.",
  },
  {
    id: "history-2",
    ruleName: "Stalled onboarding reminder",
    audience: "New hires",
    channel: "email",
    status: "queued",
    createdAt: "Today 11:00",
    engagement: "Pending",
    notes: "Queued after morning sync.",
  },
  {
    id: "history-3",
    ruleName: "Manager escalation",
    audience: "At-risk learners",
    channel: "in-app",
    status: "skipped",
    createdAt: "Yesterday 14:10",
    engagement: "N/A",
    notes: "Suppressed because rule is paused.",
  },
];