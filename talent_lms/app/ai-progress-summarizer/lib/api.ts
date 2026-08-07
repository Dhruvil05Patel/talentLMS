import { Learner } from "../types/summarizer";
import { dbRowToLearner } from "./learnerTransform";
import { generateSummary } from "./summaryGenerator";

const API = "/api";

export async function fetchLearners(filters: {
  course?: string;
  group?: string;
  risk?: string;
} = {}): Promise<Learner[]> {
  const token = localStorage.getItem("auth_token");
  if (!token) {
    throw new Error("Unauthorized: No authentication token");
  }

  const params = new URLSearchParams();
  if (filters.course && filters.course !== "all") {
    params.set("course_name", filters.course);
  }
  if (filters.group && filters.group !== "all") {
    params.set("group_name", filters.group);
  }
  if (filters.risk && filters.risk !== "all") {
    params.set("risk_status", filters.risk);
  }

  const res = await fetch(`${API}/learners?${params.toString()}`, {
    headers: {
      Authorization: `Bearer ${token}`,
    },
  });

  if (!res.ok) throw new Error(`Failed to load learners (${res.status})`);
  const json = await res.json();
  return (json.learners ?? []).map(dbRowToLearner);
}

export async function generateAllSummaries(
  learners: Learner[]
): Promise<Learner[]> {
  const token = localStorage.getItem("auth_token");
  const updated: Learner[] = [];

  for (const learner of learners) {
    const summary = generateSummary(learner);
    try {
      const res = await fetch(`${API}/summaries`, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          Authorization: `Bearer ${token ?? ""}`,
        },
        body: JSON.stringify({
          user_id: learner.id,
          summary,
          summary_generated_at: new Date().toISOString(),
        }),
      });
      if (res.ok) {
        const json = await res.json();
        updated.push(json.learner ? dbRowToLearner(json.learner) : { ...learner, summary });
      } else {
        updated.push({ ...learner, summary });
      }
    } catch {
      updated.push({ ...learner, summary });
    }
  }

  return updated;
}

export async function regenerateSummary(
  id: number,
  learners: Learner[]
): Promise<Learner | null> {
  const learner = learners.find((l) => l.id === id);
  if (!learner) return null;

  const summary = generateSummary(learner);
  const token = localStorage.getItem("auth_token");
  try {
    const res = await fetch(`${API}/summaries`, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        Authorization: `Bearer ${token ?? ""}`,
      },
      body: JSON.stringify({
        user_id: id,
        summary,
        summary_generated_at: new Date().toISOString(),
      }),
    });
    if (res.ok) {
      const json = await res.json();
      if (json.learner) return dbRowToLearner(json.learner);
    }
  } catch {
    /* keep local summary */
  }
  return { ...learner, summary };
}
