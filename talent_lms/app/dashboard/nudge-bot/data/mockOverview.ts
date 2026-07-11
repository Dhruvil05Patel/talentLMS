import { ConnectedChannel, OverviewStats, UpcomingRun } from "../types/nudge";

export const overviewStats: OverviewStats = {
  totalSent: 1842,
  sentThisWeek: 312,
  weeklyGrowth: 18,
  activeRules: 6,
  reengagedLearners: 97,
};

export const connectedChannels: ConnectedChannel[] = [
  {
    channel: "email",
    connected: true,
    provider: "SMTP",
    details: "notifications@company.com",
  },
  {
    channel: "slack",
    connected: true,
    provider: "Slack Workspace",
    details: "TalentLMS Workspace",
  },
  {
    channel: "whatsapp",
    connected: false,
    provider: "Twilio",
    details: "Not Connected",
  },
  {
    channel: "in-portal",
    connected: true,
    provider: "TalentLMS",
    details: "Internal Notifications",
  },
];

export const upcomingRuns: UpcomingRun[] = [
  {
    id: "run-1",
    ruleName: "At-Risk Learner Reminder",
    schedule: "Daily",
    nextRun: "Today • 09:00 AM",
  },
  {
    id: "run-2",
    ruleName: "Overdue Course Alert",
    schedule: "Daily",
    nextRun: "Today • 10:00 AM",
  },
  {
    id: "run-3",
    ruleName: "Slack Learning Reminder",
    schedule: "Weekly",
    nextRun: "Monday • 11:00 AM",
  },
  {
    id: "run-4",
    ruleName: "Portal Welcome Back",
    schedule: "Weekly",
    nextRun: "Tuesday • 03:00 PM",
  },
];

export const deliveryBreakdown = [
  {
    channel: "Email",
    sent: 986,
  },
  {
    channel: "Slack",
    sent: 472,
  },
  {
    channel: "WhatsApp",
    sent: 201,
  },
  {
    channel: "In-Portal",
    sent: 183,
  },
];

export const engagementMetrics = {
  openRate: 74,
  clickRate: 48,
  completionRate: 33,
  responseRate: 27,
};