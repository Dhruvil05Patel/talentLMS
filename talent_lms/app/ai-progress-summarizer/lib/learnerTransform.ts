import { Learner, RiskStatus } from "../types/summarizer";

function coerceRisk(value: unknown): RiskStatus {
  if (value === "on-track" || value === "at-risk" || value === "overdue") {
    return value;
  }
  // DB allows "no-data"; frontend type only has 3 — coerce to a safe default.
  return "on-track";
}

function parseInactiveDays(lastActive: string | null): number {
  if (!lastActive) return 0;
  const match = lastActive.match(/(\d+)/);
  return match ? parseInt(match[1], 10) : 0;
}

function defaultAvatar(name: string): string {
  return `https://ui-avatars.com/api/?name=${encodeURIComponent(
    name || "Learner"
  )}&background=2563eb&color=fff`;
}

type LearnerRow = Record<string, string | number | null | undefined>;

export function dbRowToLearner(row: LearnerRow): Learner {
  return {
    id: Number(row.user_id ?? 0),
    name: String(row.name ?? ""),
    email: String(row.email ?? ""),
    avatar: String(row.avatar_url ?? defaultAvatar(String(row.name ?? "Learner"))),
    courseId: Number(row.course_id ?? 0),
    courseName: String(row.course_name ?? ""),
    groupId: 0,
    groupName: String(row.group_name ?? ""),
    enrolledOn: String(row.enrolled_at ?? ""),
    deadline: String(row.deadline ?? ""),
    completion: Number(row.completion_pct ?? 0),
    quizAverage: Number(row.quiz_avg_pct ?? 0),
    timeSpent: Number(row.time_spent_mins ?? 0),
    certificatesEarned: Number(row.certificates_earned ?? 0),
    lastActive: String(row.last_active ?? ""),
    inactiveDays: parseInactiveDays(String(row.last_active ?? "")),
    risk: coerceRisk(row.risk_status),
    summary: String(row.summary ?? ""),
  };
}

export function learnerToDbRow(learner: Learner): Record<string, unknown> {
  return {
    user_id: learner.id,
    name: learner.name,
    email: learner.email,
    avatar_url: learner.avatar,
    course_id: learner.courseId,
    course_name: learner.courseName,
    group_name: learner.groupName,
    enrolled_at: learner.enrolledOn,
    completion_pct: learner.completion,
    quiz_avg_pct: learner.quizAverage,
    time_spent_mins: learner.timeSpent,
    deadline: learner.deadline,
    risk_status: learner.risk,
    summary: learner.summary,
    last_active: learner.lastActive,
  };
}
