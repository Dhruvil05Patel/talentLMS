export type RiskStatus = "on-track" | "at-risk" | "overdue" | "no-data";

export interface Learner {
  user_id: number;
  name: string;
  email: string;
  avatar_url: string | null;
  course_id: number;
  course_name: string;
  enrolled_at: string;
  completion_pct: number;
  last_active: string;
  time_spent_mins: number;
  quiz_avg_pct: number;
  deadline: string;
  risk_status: RiskStatus;
  summary: string | null;
  summary_generated_at: string | null;
}

export const COURSES = [
  "All Courses",
  "Safety Training",
  "Leadership Essentials",
  "Data Privacy 101",
  "Customer Success Foundations",
  "Project Management Pro",
];

export const GROUPS = [
  "All Groups",
  "Engineering",
  "Sales",
  "People Ops",
  "Support",
];

export const mockLearners: Learner[] = [
  {
    user_id: 101,
    name: "John Doe",
    email: "john.doe@company.com",
    avatar_url: null,
    course_id: 5,
    course_name: "Safety Training",
    enrolled_at: "2025-01-15T00:00:00Z",
    completion_pct: 42,
    last_active: "9 days ago",
    time_spent_mins: 134,
    quiz_avg_pct: 38,
    deadline: "Jul 10",
    risk_status: "overdue",
    summary:
      "John is roughly halfway through Safety Training but hasn't logged in for 9 days and scored 38% on the Module 2 quiz. At this pace he's unlikely to meet the July 10 deadline. The low quiz score suggests he may need clarification on the material before continuing.",
    summary_generated_at: "2025-07-01T12:00:00Z",
  },
  {
    user_id: 102,
    name: "Maria Garcia",
    email: "maria.garcia@company.com",
    avatar_url: null,
    course_id: 8,
    course_name: "Leadership Essentials",
    enrolled_at: "2025-02-02T00:00:00Z",
    completion_pct: 88,
    last_active: "1 day ago",
    time_spent_mins: 312,
    quiz_avg_pct: 91,
    deadline: "Aug 30",
    risk_status: "on-track",
    summary:
      "Maria is on track to complete Leadership Essentials well ahead of the August 30 deadline. She's at 88% completion with a strong 91% quiz average and logged in yesterday. No intervention needed — she's a candidate for the advanced cohort.",
    summary_generated_at: "2025-07-01T12:00:00Z",
  },
  {
    user_id: 103,
    name: "Wei Chen",
    email: "wei.chen@company.com",
    avatar_url: null,
    course_id: 12,
    course_name: "Data Privacy 101",
    enrolled_at: "2025-03-11T00:00:00Z",
    completion_pct: 61,
    last_active: "4 days ago",
    time_spent_mins: 198,
    quiz_avg_pct: 72,
    deadline: "Jul 20",
    risk_status: "at-risk",
    summary:
      "Wei is at 61% on Data Privacy 101 with 9 days left before the July 20 deadline. Progress has slowed over the past week. A gentle nudge to finish the remaining modules would likely keep him on track.",
    summary_generated_at: "2025-07-01T12:00:00Z",
  },
  {
    user_id: 104,
    name: "Aisha Khan",
    email: "aisha.khan@company.com",
    avatar_url: null,
    course_id: 5,
    course_name: "Safety Training",
    enrolled_at: "2025-01-20T00:00:00Z",
    completion_pct: 24,
    last_active: "21 days ago",
    time_spent_mins: 76,
    quiz_avg_pct: 44,
    deadline: "Jul 05",
    risk_status: "overdue",
    summary:
      "Aisha is severely overdue on Safety Training — only 24% complete, last active 21 days ago, and the July 5 deadline has passed. Direct manager outreach is recommended; she may be blocked by conflicting priorities.",
    summary_generated_at: "2025-07-01T12:00:00Z",
  },
  {
    user_id: 105,
    name: "Tom Becker",
    email: "tom.becker@company.com",
    avatar_url: null,
    course_id: 15,
    course_name: "Customer Success Foundations",
    enrolled_at: "2025-02-18T00:00:00Z",
    completion_pct: 95,
    last_active: "2 days ago",
    time_spent_mins: 401,
    quiz_avg_pct: 87,
    deadline: "Sep 01",
    risk_status: "on-track",
    summary:
      "Tom is essentially finished with Customer Success Foundations at 95% completion, ahead of the September 1 deadline. Strong quiz performance throughout. Ready to certify.",
    summary_generated_at: "2025-07-01T12:00:00Z",
  },
  {
    user_id: 106,
    name: "Priya Nair",
    email: "priya.nair@company.com",
    avatar_url: null,
    course_id: 9,
    course_name: "Project Management Pro",
    enrolled_at: "2025-04-01T00:00:00Z",
    completion_pct: 53,
    last_active: "6 days ago",
    time_spent_mins: 221,
    quiz_avg_pct: 66,
    deadline: "Jul 18",
    risk_status: "at-risk",
    summary:
      "Priya is at 53% on Project Management Pro with the July 18 deadline approaching. Her quiz average of 66% is borderline. Encouraging her to revisit Module 3 would reduce risk of slipping.",
    summary_generated_at: "2025-07-01T12:00:00Z",
  },
  {
    user_id: 107,
    name: "Lucas Müller",
    email: "lucas.muller@company.com",
    avatar_url: null,
    course_id: 12,
    course_name: "Data Privacy 101",
    enrolled_at: "2025-03-15T00:00:00Z",
    completion_pct: 0,
    last_active: "—",
    time_spent_mins: 0,
    quiz_avg_pct: 0,
    deadline: "Jul 20",
    risk_status: "no-data",
    summary: null,
    summary_generated_at: null,
  },
  {
    user_id: 108,
    name: "Sofia Rossi",
    email: "sofia.rossi@company.com",
    avatar_url: null,
    course_id: 8,
    course_name: "Leadership Essentials",
    enrolled_at: "2025-02-10T00:00:00Z",
    completion_pct: 79,
    last_active: "3 days ago",
    time_spent_mins: 288,
    quiz_avg_pct: 83,
    deadline: "Aug 30",
    risk_status: "on-track",
    summary:
      "Sofia is progressing steadily on Leadership Essentials at 79%, on pace for the August 30 deadline. Quiz average of 83% indicates solid comprehension. No action required.",
    summary_generated_at: "2025-07-01T12:00:00Z",
  },
  {
    user_id: 109,
    name: "Daniel Okafor",
    email: "daniel.okafor@company.com",
    avatar_url: null,
    course_id: 5,
    course_name: "Safety Training",
    enrolled_at: "2025-01-28T00:00:00Z",
    completion_pct: 33,
    last_active: "12 days ago",
    time_spent_mins: 98,
    quiz_avg_pct: 51,
    deadline: "Jul 08",
    risk_status: "overdue",
    summary:
      "Daniel is overdue on Safety Training at 33% completion with the July 8 deadline missed and 12 days since last login. The 51% quiz average points to possible content gaps. Schedule a check-in this week.",
    summary_generated_at: "2025-07-01T12:00:00Z",
  },
  {
    user_id: 110,
    name: "Emma Larsson",
    email: "emma.larsson@company.com",
    avatar_url: null,
    course_id: 15,
    course_name: "Customer Success Foundations",
    enrolled_at: "2025-02-25T00:00:00Z",
    completion_pct: 67,
    last_active: "5 days ago",
    time_spent_mins: 254,
    quiz_avg_pct: 74,
    deadline: "Sep 01",
    risk_status: "at-risk",
    summary:
      "Emma is at 67% on Customer Success Foundations. She's keeping up but the September 1 deadline leaves room to accelerate. A mid-course quiz review would lift her 74% average.",
    summary_generated_at: "2025-07-01T12:00:00Z",
  },
  {
    user_id: 111,
    name: "Noah Williams",
    email: "noah.williams@company.com",
    avatar_url: null,
    course_id: 9,
    course_name: "Project Management Pro",
    enrolled_at: "2025-04-05T00:00:00Z",
    completion_pct: 91,
    last_active: "1 day ago",
    time_spent_mins: 367,
    quiz_avg_pct: 89,
    deadline: "Jul 18",
    risk_status: "on-track",
    summary:
      "Noah is on track on Project Management Pro at 91% with the July 18 deadline comfortably met. Excellent 89% quiz average. Positioned to mentor peers in the next cohort.",
    summary_generated_at: "2025-07-01T12:00:00Z",
  },
  {
    user_id: 112,
    name: "Yuki Tanaka",
    email: "yuki.tanaka@company.com",
    avatar_url: null,
    course_id: 12,
    course_name: "Data Privacy 101",
    enrolled_at: "2025-03-20T00:00:00Z",
    completion_pct: 48,
    last_active: "8 days ago",
    time_spent_mins: 167,
    quiz_avg_pct: 58,
    deadline: "Jul 20",
    risk_status: "at-risk",
    summary:
      "Yuki sits at 48% on Data Privacy 101 with the July 20 deadline near. Eight days since last activity and a 58% quiz average suggest waning momentum. A reminder about the deadline should re-engage her.",
    summary_generated_at: "2025-07-01T12:00:00Z",
  },
];

export function formatTimeSpent(mins: number): string {
  if (mins <= 0) return "—";
  const h = Math.floor(mins / 60);
  const m = mins % 60;
  if (h === 0) return `${m}m`;
  return `${h}h ${m}m`;
}

export function initials(name: string): string {
  return name
    .split(" ")
    .map((p) => p[0])
    .slice(0, 2)
    .join("")
    .toUpperCase();
}
