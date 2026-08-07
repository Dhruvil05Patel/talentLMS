import { daysInactive, type LearnerRow } from "./nudgeEngine";

export type NudgeTone = "encouraging" | "urgent" | "neutral";
export type NudgeChannel = "email" | "slack" | "whatsapp" | "in-portal";

interface GenerateNudgeInput {
  firstName: string;
  courseName: string;
  completionPct: number;
  daysInactive: number;
  deadlineLabel: string;
  riskStatus: string;
  progressSummary: string;
  tone: NudgeTone;
  channel: NudgeChannel;
}

const CHANNEL_LENGTH_INSTRUCTIONS: Record<NudgeChannel, string> = {
  email: "3 to 5 sentences.",
  slack: "2 to 3 sentences.",
  whatsapp: "1 to 2 short conversational sentences.",
  "in-portal": "1 sentence only, under 120 characters total.",
};

const SYSTEM_PROMPT = `
You are a learner engagement assistant for a corporate LMS.
Write a short, personalised re-engagement nudge for a learner who needs encouragement.
Rules:
- Address the learner by first name only.
- Reference specific details: course name, completion %, deadline if relevant.
- Keep it warm and human; never sound like an automated reminder.
- No bullet points, no markdown, no sign-off, no subject line.
- Output only the message body text.
`.trim();

export async function generateNudgeMessage(input: GenerateNudgeInput): Promise<string> {
  if (!process.env.ANTHROPIC_API_KEY) return fallbackNudgeMessage(input);

  const userPrompt = `
Learner first name: ${input.firstName}
Course: ${input.courseName}
Completion: ${input.completionPct}%
Last active: ${input.daysInactive} days ago
Deadline: ${input.deadlineLabel}
Risk status: ${input.riskStatus}
Situation summary: ${input.progressSummary}
Tone: ${input.tone}
Channel: ${input.channel}
Length: ${CHANNEL_LENGTH_INSTRUCTIONS[input.channel]}

Write the nudge message now.
`.trim();

  const res = await fetch("https://api.anthropic.com/v1/messages", {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
      "x-api-key": process.env.ANTHROPIC_API_KEY,
      "anthropic-version": "2023-06-01",
    },
    body: JSON.stringify({
      model: process.env.ANTHROPIC_MODEL ?? "claude-sonnet-4-6",
      max_tokens: 300,
      system: SYSTEM_PROMPT,
      messages: [{ role: "user", content: userPrompt }],
    }),
  });

  if (!res.ok) return fallbackNudgeMessage(input);
  const data = await res.json();
  const text = data.content?.find((block: { type: string; text?: string }) => block.type === "text")?.text ?? "";
  return text.trim() || fallbackNudgeMessage(input);
}

export function buildNudgeInputFromLearner(
  learner: LearnerRow & { summary?: string | null },
  tone: NudgeTone,
  channel: NudgeChannel
): GenerateNudgeInput {
  const name = learner.name ?? "Learner";
  return {
    firstName: name.split(" ")[0] ?? name,
    courseName: learner.course_name ?? "your course",
    completionPct: learner.completion_pct ?? learner.completion ?? 0,
    daysInactive: daysInactive(learner),
    deadlineLabel: learner.deadline ? new Date(learner.deadline).toLocaleDateString("en-US", { month: "short", day: "numeric" }) : "No deadline",
    riskStatus: learner.risk_status ?? learner.risk ?? "no-data",
    progressSummary: learner.summary ?? "No summary available.",
    tone,
    channel,
  };
}

function fallbackNudgeMessage(input: GenerateNudgeInput): string {
  const deadline = input.deadlineLabel === "No deadline" ? "" : ` before ${input.deadlineLabel}`;
  if (input.tone === "urgent") {
    return `${input.firstName}, ${input.courseName} needs attention. You are ${input.completionPct}% complete, and a short session today can help you get back on track${deadline}.`;
  }
  if (input.tone === "neutral") {
    return `${input.firstName}, you are ${input.completionPct}% through ${input.courseName}. Continue when you have a moment so your progress keeps moving${deadline}.`;
  }
  return `Hey ${input.firstName}! You are ${input.completionPct}% through ${input.courseName}. Picking it up for a short session today can help you stay on track${deadline}.`;
}

