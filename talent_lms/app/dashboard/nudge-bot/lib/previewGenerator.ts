import { NudgePreview, NudgeRule } from "../types/nudge";

export function generatePreview(rule: NudgeRule): NudgePreview {
  return {
    title: `${rule.channel.toUpperCase()} preview for ${rule.name}`,
    body: rule.message ?? rule.template ?? "No message configured.",
    tone: rule.status === "active" ? "success" : rule.status === "paused" ? "warning" : "neutral",
  };
}
