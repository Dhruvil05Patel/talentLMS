import type { NudgeRule } from "../types/nudge";
import RuleCard from "./RuleCard";

export default function RulesTab({ rules, onInspect }: { rules: NudgeRule[]; onInspect: (rule: NudgeRule) => void }) {
  return <div className="grid gap-4 lg:grid-cols-2 2xl:grid-cols-3">{rules.map((rule) => <RuleCard key={rule.id} rule={rule} onInspect={onInspect} />)}</div>;
}