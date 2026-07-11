import { NudgeRule } from "../types/nudge";

export const mockRules: NudgeRule[] = [
  {
    id: "RULE-001",
    name: "At-Risk Learner Reminder",
    enabled: true,

    riskStatuses: ["at-risk"],

    minInactiveDays: 5,
    completionBelow: 60,
    deadlineWithin: 10,

    course: "All Courses",
    group: "All Groups",

    schedule: "daily",
    scheduleTime: "09:00",
    timezone: "Asia/Kolkata",

    channel: "email",

    cooldownHours: 48,

    messageMode: "ai-generated",

    tone: "encouraging",

    lastRun: "2026-07-03 09:00",

    sentCount: 412,
  },

  {
    id: "RULE-002",
    name: "Overdue Course Alert",
    enabled: true,

    riskStatuses: ["overdue"],

    minInactiveDays: 10,
    completionBelow: 40,
    deadlineWithin: 5,

    course: "All Courses",
    group: "All Groups",

    schedule: "daily",
    scheduleTime: "10:00",
    timezone: "Asia/Kolkata",

    channel: "email",

    cooldownHours: 24,

    messageMode: "ai-generated",

    tone: "urgent",

    lastRun: "2026-07-03 10:00",

    sentCount: 226,
  },

  {
    id: "RULE-003",
    name: "Slack Learning Reminder",
    enabled: true,

    riskStatuses: ["at-risk"],

    minInactiveDays: 7,
    completionBelow: 70,
    deadlineWithin: 14,

    course: "Cyber Security Awareness",
    group: "Engineering",

    schedule: "weekly",
    scheduleTime: "11:00",
    timezone: "Asia/Kolkata",

    channel: "slack",

    cooldownHours: 72,

    messageMode: "template",

    tone: "neutral",

    template:
      "Hi {{name}}, don't forget to continue your learning journey this week!",

    lastRun: "2026-06-30 11:00",

    sentCount: 188,
  },

  {
    id: "RULE-004",
    name: "WhatsApp Deadline Reminder",
    enabled: true,

    riskStatuses: ["at-risk", "overdue"],

    minInactiveDays: 3,
    completionBelow: 80,
    deadlineWithin: 3,

    course: "Leadership Essentials",
    group: "Management",

    schedule: "daily",
    scheduleTime: "08:30",
    timezone: "Asia/Kolkata",

    channel: "whatsapp",

    cooldownHours: 24,

    messageMode: "ai-generated",

    tone: "encouraging",

    lastRun: "2026-07-03 08:30",

    sentCount: 96,
  },

  {
    id: "RULE-005",
    name: "Portal Welcome Back",
    enabled: true,

    riskStatuses: ["on-track"],

    minInactiveDays: 14,
    completionBelow: 100,
    deadlineWithin: 30,

    course: "All Courses",
    group: "Sales",

    schedule: "weekly",
    scheduleTime: "15:00",
    timezone: "Asia/Kolkata",

    channel: "in-portal",

    cooldownHours: 168,

    messageMode: "template",

    tone: "encouraging",

    template:
      "Welcome back! Continue where you left off and keep learning.",

    lastRun: "2026-07-01 15:00",

    sentCount: 143,
  },

  {
    id: "RULE-006",
    name: "Finance Compliance Reminder",
    enabled: false,

    riskStatuses: ["at-risk"],

    minInactiveDays: 4,
    completionBelow: 65,
    deadlineWithin: 7,

    course: "HIPAA Compliance",
    group: "Finance",

    schedule: "daily",
    scheduleTime: "09:30",
    timezone: "Asia/Kolkata",

    channel: "email",

    cooldownHours: 48,

    messageMode: "template",

    tone: "neutral",

    template:
      "Please complete your mandatory compliance training.",

    lastRun: "2026-06-28 09:30",

    sentCount: 54,
  },

  {
    id: "RULE-007",
    name: "Executive Escalation",

    enabled: true,

    riskStatuses: ["overdue"],

    minInactiveDays: 21,
    completionBelow: 25,
    deadlineWithin: 2,

    course: "All Courses",
    group: "Management",

    schedule: "manual",
    scheduleTime: "--",
    timezone: "Asia/Kolkata",

    channel: "email",

    cooldownHours: 24,

    messageMode: "ai-generated",

    tone: "urgent",

    lastRun: "Never",

    sentCount: 0,
  },

  {
    id: "RULE-008",
    name: "Customer Service Follow-up",

    enabled: true,

    riskStatuses: ["at-risk"],

    minInactiveDays: 6,
    completionBelow: 75,
    deadlineWithin: 12,

    course: "Customer Service",

    group: "Support",

    schedule: "weekly",

    scheduleTime: "16:00",

    timezone: "Asia/Kolkata",

    channel: "slack",

    cooldownHours: 72,

    messageMode: "ai-generated",

    tone: "encouraging",

    lastRun: "2026-07-02 16:00",

    sentCount: 117,
  },
];

export default mockRules;