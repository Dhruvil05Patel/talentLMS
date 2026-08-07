import { Learner } from "../types/summarizer";

const openings = [
  "Overall,",
  "Based on recent activity,",
  "Current learning data indicates that",
  "Analysis shows that",
  "Recent performance suggests that",
];

const positives = [
  "is progressing steadily.",
  "is engaged with the course material.",
  "has maintained consistent learning habits.",
  "is demonstrating good learning momentum.",
  "is on pace to complete the course successfully.",
];

const warnings = [
  "has become less active recently.",
  "may require additional guidance.",
  "is falling behind the expected timeline.",
  "could benefit from more frequent learning sessions.",
  "shows signs of reduced engagement.",
];

const recommendations = [
  "Recommend sending a reminder email.",
  "Manager follow-up is advised.",
  "Consider assigning additional practice exercises.",
  "Schedule a coaching session if inactivity continues.",
  "Encourage the learner to complete the next module this week.",
];

const achievements = [
  "Excellent quiz performance demonstrates strong understanding.",
  "High completion rate indicates consistent participation.",
  "Strong assessment scores reflect good knowledge retention.",
  "The learner is performing above average.",
];

function randomItem<T>(items: T[]): T {
  return items[Math.floor(Math.random() * items.length)];
}

function progressMessage(progress: number) {
  if (progress >= 90)
    return "Course completion is nearly finished.";

  if (progress >= 75)
    return "Most required modules have been completed.";

  if (progress >= 50)
    return "More than half of the course has been completed.";

  if (progress >= 25)
    return "Early progress has been made but further participation is needed.";

  return "Very little course progress has been completed.";
}

function activityMessage(days: number) {
  if (days <= 2)
    return "The learner has been active very recently.";

  if (days <= 7)
    return `Last activity was ${days} days ago.`;

  if (days <= 14)
    return `The learner has been inactive for ${days} days.`;

  return `Extended inactivity (${days} days) may impact course completion.`;
}

function quizMessage(score: number) {
  if (score >= 90)
    return "Assessment performance is outstanding.";

  if (score >= 75)
    return "Assessment results are consistently strong.";

  if (score >= 60)
    return "Quiz performance is satisfactory.";

  if (score >= 45)
    return "Assessment scores indicate additional revision may be helpful.";

  return "Low assessment scores suggest immediate intervention is recommended.";
}

function riskMessage(risk: Learner["risk"]) {
  switch (risk) {
    case "on-track":
      return "Overall risk level is low.";

    case "at-risk":
      return "The learner should be monitored closely.";

    case "overdue":
      return "Immediate action is recommended to prevent course failure.";

    default:
      return "";
  }
}

export function generateSummary(learner: Learner): string {
  const parts = [
    randomItem(openings),

    learner.risk === "on-track"
      ? randomItem(positives)
      : randomItem(warnings),

    progressMessage(learner.completion),

    activityMessage(learner.inactiveDays),

    quizMessage(learner.quizAverage),

    riskMessage(learner.risk),

    learner.quizAverage >= 85
      ? randomItem(achievements)
      : randomItem(recommendations),
  ];

  return parts.join(" ");
}

export function generateAllSummaries(
  learners: Learner[]
): Learner[] {
  return learners.map((learner) => ({
    ...learner,
    summary: generateSummary(learner),
  }));
}

export async function generateSummaryAsync(
  learner: Learner
): Promise<string> {
  await new Promise((resolve) => setTimeout(resolve, 500));

  return generateSummary(learner);
}

export async function generateAllSummariesAsync(
  learners: Learner[],
  onProgress?: (completed: number, total: number) => void
): Promise<Learner[]> {
  const updated: Learner[] = [];

  for (let i = 0; i < learners.length; i++) {
    const learner = learners[i];

    const summary = await generateSummaryAsync(learner);

    updated.push({
      ...learner,
      summary,
    });

    onProgress?.(i + 1, learners.length);
  }

  return updated;
}