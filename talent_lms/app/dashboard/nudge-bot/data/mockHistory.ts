import { NudgeHistoryItem } from "../types/nudge";

export const mockHistory: NudgeHistoryItem[] = [
  {
    id: "history-1",
    ruleName: "Overdue Learners - Daily Email",
    audience: "John Doe",
    channel: "email",
    status: "sent",
    createdAt: "Today 09:00",
    engagement: "Safety Training",
    notes: "Delivered to learner inbox.",
  },
  {
    id: "history-2",
    ruleName: "At Risk - Weekly Slack Alert",
    audience: "Priya Singh",
    channel: "slack",
    status: "sent",
    createdAt: "Today 09:00",
    engagement: "Onboarding 101",
    notes: "Learner clicked through from Slack.",
  },
  {
    id: "history-3",
    ruleName: "Overdue Learners - Daily Email",
    audience: "Mark Thompson",
    channel: "email",
    status: "failed",
    createdAt: "Today 09:00",
    engagement: "Data Privacy",
    notes: "SMTP provider rejected recipient.",
  },
  {
    id: "history-4",
    ruleName: "WhatsApp Deadline Reminder",
    audience: "Sarah Lee",
    channel: "whatsapp",
    status: "sent",
    createdAt: "Yesterday 08:30",
    engagement: "Leadership Essentials",
    notes: "Delivered through approved template.",
  },
];
