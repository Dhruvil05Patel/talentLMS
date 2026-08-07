import { KPIStats, Learner, RiskStatus } from "../types/summarizer";

/**
 * Calculates learner risk based on progress,
 * inactivity and quiz performance.
 */
export function calculateRisk(
  completion: number,
  inactiveDays: number,
  quizAverage: number
): RiskStatus {
  if (
    completion < 40 ||
    inactiveDays > 14 ||
    quizAverage < 45
  ) {
    return "overdue";
  }

  if (
    completion < 70 ||
    inactiveDays > 7 ||
    quizAverage < 65
  ) {
    return "at-risk";
  }

  return "on-track";
}

/**
 * Tailwind badge colors.
 */
export function getRiskBadgeColor(risk: RiskStatus): string {
  switch (risk) {
    case "on-track":
      return "bg-emerald-100 text-emerald-700 border border-emerald-200";

    case "at-risk":
      return "bg-amber-100 text-amber-700 border border-amber-200";

    case "overdue":
      return "bg-red-100 text-red-700 border border-red-200";

    default:
      return "bg-slate-100 text-slate-600";
  }
}

/**
 * Progress bar colors.
 */
export function getProgressColor(progress: number): string {
  if (progress >= 80) {
    return "bg-emerald-500";
  }

  if (progress >= 50) {
    return "bg-amber-500";
  }

  return "bg-red-500";
}

/**
 * Progress label.
 */
export function getProgressLabel(progress: number): string {
  if (progress >= 90) return "Excellent";

  if (progress >= 75) return "Good";

  if (progress >= 50) return "Average";

  if (progress >= 25) return "Needs Attention";

  return "Critical";
}

/**
 * Completion percentage.
 */
export function getCompletionPercentage(
  completed: number,
  total: number
) {
  if (total === 0) return 0;

  return Math.round((completed / total) * 100);
}

/**
 * Dashboard KPIs.
 */
export function calculateKPIs(
  learners: Learner[]
): KPIStats {
  return {
    totalLearners: learners.length,

    onTrack: learners.filter(
      (l) => l.risk === "on-track"
    ).length,

    atRisk: learners.filter(
      (l) => l.risk === "at-risk"
    ).length,

    overdue: learners.filter(
      (l) => l.risk === "overdue"
    ).length,
  };
}

/**
 * Sort learners by risk priority.
 */
export function sortByRisk(
  learners: Learner[]
): Learner[] {
  const priority: Record<RiskStatus, number> = {
    overdue: 0,
    "at-risk": 1,
    "on-track": 2,
  };

  return [...learners].sort(
    (a, b) => priority[a.risk] - priority[b.risk]
  );
}

/**
 * Filter learners.
 */
export function filterLearners(
  learners: Learner[],
  search: string,
  selectedCourse: string,
  selectedGroup: string,
  selectedRisk: string
) {
  return learners.filter((learner) => {
    const matchesSearch =
      learner.name
        .toLowerCase()
        .includes(search.toLowerCase()) ||
      learner.email
        .toLowerCase()
        .includes(search.toLowerCase());

    const matchesCourse =
      selectedCourse === "all" ||
      learner.courseName === selectedCourse;

    const matchesGroup =
      selectedGroup === "all" ||
      learner.groupName === selectedGroup;

    const matchesRisk =
      selectedRisk === "all" ||
      learner.risk === selectedRisk;

    return (
      matchesSearch &&
      matchesCourse &&
      matchesGroup &&
      matchesRisk
    );
  });
}

/**
 * Average progress.
 */
export function getAverageProgress(
  learners: Learner[]
): number {
  if (!learners.length) return 0;

  const total = learners.reduce(
    (sum, learner) => sum + learner.completion,
    0
  );

  return Math.round(total / learners.length);
}

/**
 * Average quiz score.
 */
export function getAverageQuizScore(
  learners: Learner[]
): number {
  if (!learners.length) return 0;

  const total = learners.reduce(
    (sum, learner) => sum + learner.quizAverage,
    0
  );

  return Math.round(total / learners.length);
}

/**
 * Total learning hours.
 */
export function getTotalLearningHours(
  learners: Learner[]
): number {
  const minutes = learners.reduce(
    (sum, learner) => sum + learner.timeSpent,
    0
  );

  return Number((minutes / 60).toFixed(1));
}