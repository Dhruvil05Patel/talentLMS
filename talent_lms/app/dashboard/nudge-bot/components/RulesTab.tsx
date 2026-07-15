import type { NudgeRule } from "../types/nudge";
import RuleCard from "./RuleCard";

export default function RulesTab({
  rules,
  onInspect,
  onCreate,
}: {
  rules: NudgeRule[];
  onInspect: (rule: NudgeRule) => void;
  onCreate: () => void;
}) {
  return (
    <section className="rounded-xl border border-[#EDE8DE] bg-white p-5 shadow-sm">
      <div className="flex flex-col gap-3 sm:flex-row sm:items-center sm:justify-between">
        <h2 className="font-[var(--font-jakarta)] text-lg font-bold text-[#1A2B5B]">Rules</h2>
        <button
          onClick={onCreate}
          className="inline-flex w-fit rounded-full border border-[#1A2B5B] px-4 py-2 text-sm font-bold text-[#1A2B5B] transition hover:bg-[#FAF8F3]"
        >
          + New Rule
        </button>
      </div>

      <div className="mt-4 divide-y divide-[#EDE8DE]">
        {rules.map((rule) => (
          <RuleCard key={rule.id} rule={rule} onInspect={onInspect} />
        ))}
      </div>
    </section>
  );
}
