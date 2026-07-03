import { Learner, SummaryJob } from "../types/summarizer";
import { mockLearners } from "../data/mockLearners";
import {
  generateAllSummaries,
  generateSummary,
} from "./summaryGenerator";

const delay = (ms: number) =>
  new Promise((resolve) => setTimeout(resolve, ms));

let learners: Learner[] = [...mockLearners];

let currentJob: SummaryJob = {
  id: crypto.randomUUID(),
  status: "idle",
  progress: 0,
};

export async function getLearners(): Promise<Learner[]> {
  await delay(600);

  return [...learners];
}

export async function getLearner(
  id: number
): Promise<Learner | null> {
  await delay(300);

  return learners.find((l) => l.id === id) ?? null;
}

export async function generateAllAI(): Promise<Learner[]> {
  currentJob = {
    id: crypto.randomUUID(),
    status: "running",
    progress: 0,
  };

  const total = learners.length;

  const updated: Learner[] = [];

  for (let i = 0; i < total; i++) {
    await delay(120);

    updated.push({
      ...learners[i],
      summary: generateSummary(learners[i]),
    });

    currentJob.progress = Math.round(
      ((i + 1) / total) * 100
    );
  }

  learners = updated;

  currentJob.status = "completed";

  currentJob.progress = 100;

  return [...learners];
}

export async function regenerateSummary(
  learnerId: number
): Promise<Learner | null> {
  await delay(500);

  const learner = learners.find(
    (l) => l.id === learnerId
  );

  if (!learner) return null;

  learner.summary = generateSummary(learner);

  return learner;
}

export async function regenerateAllInstant(): Promise<Learner[]> {
  await delay(500);

  learners = generateAllSummaries(learners);

  currentJob = {
    id: crypto.randomUUID(),
    status: "completed",
    progress: 100,
  };

  return [...learners];
}

export async function getJobStatus(): Promise<SummaryJob> {
  await delay(200);

  return { ...currentJob };
}

export async function resetMockData(): Promise<Learner[]> {
  await delay(300);

  learners = [...mockLearners];

  currentJob = {
    id: crypto.randomUUID(),
    status: "idle",
    progress: 0,
  };

  return [...learners];
}

export async function searchLearners(
  query: string
): Promise<Learner[]> {
  await delay(300);

  if (!query.trim()) {
    return [...learners];
  }

  const search = query.toLowerCase();

  return learners.filter(
    (learner) =>
      learner.name.toLowerCase().includes(search) ||
      learner.email.toLowerCase().includes(search) ||
      learner.courseName.toLowerCase().includes(search) ||
      learner.groupName.toLowerCase().includes(search)
  );
}

export async function getDashboardStats() {
  await delay(250);

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

    averageProgress:
      Math.round(
        learners.reduce(
          (sum, learner) => sum + learner.completion,
          0
        ) / learners.length
      ),

    averageQuizScore:
      Math.round(
        learners.reduce(
          (sum, learner) => sum + learner.quizAverage,
          0
        ) / learners.length
      ),

    totalLearningHours: Number(
      (
        learners.reduce(
          (sum, learner) => sum + learner.timeSpent,
          0
        ) / 60
      ).toFixed(1)
    ),
  };
}