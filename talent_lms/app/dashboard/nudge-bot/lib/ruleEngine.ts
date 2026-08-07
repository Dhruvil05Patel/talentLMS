import { Learner } from "../../../ai-progress-summarizer/types/summarizer";
import {
  DryRunResult,
  NudgeRule,
  RiskStatus,
} from "../types/nudge";

/**
 * Returns true if learner satisfies a rule.
 */
export function matchesRule(
  learner: Learner,
  rule: NudgeRule
): boolean {
  if (!rule.enabled) return false;

  if (!rule.riskStatuses.includes(learner.risk as RiskStatus))
    return false;

  if (learner.inactiveDays < rule.minInactiveDays)
    return false;

  if (learner.completion >= rule.completionBelow)
    return false;

  const daysRemaining = getDaysRemaining(
    learner.deadline
  );

  if (daysRemaining > rule.deadlineWithin)
    return false;

  if (
    rule.course !== "All Courses" &&
    learner.courseName !== rule.course
  )
    return false;

  if (
    rule.group !== "All Groups" &&
    learner.groupName !== rule.group
  )
    return false;

  return true;
}

/**
 * Dry run a single rule.
 */
export function dryRunRule(
  learners: Learner[],
  rule: NudgeRule
): DryRunResult[] {
  return learners.map((learner) => {
    const matched = matchesRule(
      learner,
      rule
    );

    return {
      learner: learner.name,
      course: learner.courseName,
      channel: rule.channel,

      status: matched
        ? "send"
        : "skip",

      reason: matched
        ? "Eligible"
        : getSkipReason(
            learner,
            rule
          ),
    };
  });
}

/**
 * Number of eligible learners.
 */
export function getEligibleLearners(
  learners: Learner[],
  rule: NudgeRule
) {
  return learners.filter((learner) =>
    matchesRule(learner, rule)
  );
}

/**
 * Toggle enable/disable.
 */
export function toggleRule(
  rules: NudgeRule[],
  id: string
) {
  return rules.map((rule) =>
    rule.id === id
      ? {
          ...rule,
          enabled: !rule.enabled,
        }
      : rule
  );
}

/**
 * Sort rules.
 */
export function sortRules(
  rules: NudgeRule[]
) {
  return [...rules].sort((a, b) => {
    if (a.enabled === b.enabled) {
      return a.name.localeCompare(
        b.name
      );
    }

    return a.enabled ? -1 : 1;
  });
}

/**
 * Search rules.
 */
export function filterRules(
  rules: NudgeRule[],
  search: string
) {
  if (!search.trim())
    return rules;

  const value =
    search.toLowerCase();

  return rules.filter(
    (rule) =>
      rule.name
        .toLowerCase()
        .includes(value) ||
      rule.course
        .toLowerCase()
        .includes(value) ||
      rule.group
        .toLowerCase()
        .includes(value)
  );
}

/**
 * Countdown to next run.
 */
export function nextRunLabel(
  time: string
) {
  return `Next run at ${time}`;
}

/**
 * Human readable cooldown.
 */
export function cooldownLabel(
  hours: number
) {
  if (hours >= 24) {
    return `${hours / 24} day(s)`;
  }

  return `${hours} hour(s)`;
}

/**
 * Days remaining.
 */
function getDaysRemaining(
  deadline: string
) {
  const end = new Date(deadline);

  const now = new Date();

  return Math.ceil(
    (end.getTime() -
      now.getTime()) /
      86400000
  );
}

/**
 * Skip reason.
 */
function getSkipReason(
  learner: Learner,
  rule: NudgeRule
) {
  if (
    learner.inactiveDays <
    rule.minInactiveDays
  )
    return "Inactive period not reached";

  if (
    learner.completion >=
    rule.completionBelow
  )
    return "Completion threshold not met";

  if (
    !rule.riskStatuses.includes(
      learner.risk as RiskStatus
    )
  )
    return "Risk category mismatch";

  return "Conditions not satisfied";
}

/**
 * Rule summary.
 */
export function buildRuleSummary(
  rule: NudgeRule
) {
  return `${rule.channel.toUpperCase()} • ${
    rule.schedule
  } • ${rule.riskStatuses.join(
    ", "
  )}`;
}
