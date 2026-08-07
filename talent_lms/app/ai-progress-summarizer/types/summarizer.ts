export type RiskStatus = "on-track" | "at-risk" | "overdue";

export type ViewMode = "cards" | "table";

export interface Learner {
  id: number;
  name: string;
  email: string;
  avatar: string;

  courseId: number;
  courseName: string;

  groupId: number;
  groupName: string;

  enrolledOn: string;
  deadline: string;

  completion: number;
  quizAverage: number;
  timeSpent: number; // minutes
  certificatesEarned: number;

  lastActive: string;
  inactiveDays: number;

  risk: RiskStatus;

  summary: string;
}

export interface KPIStats {
  totalLearners: number;
  onTrack: number;
  atRisk: number;
  overdue: number;
}

export interface FilterState {
  search: string;
  course: string;
  group: string;
  risk: string;
}

export interface SummaryJob {
  id: string;
  status: "idle" | "running" | "completed";
  progress: number;
}

export interface SummaryResponse {
  learnerId: number;
  summary: string;
}