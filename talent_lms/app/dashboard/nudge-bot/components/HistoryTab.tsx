import type { NudgeHistoryItem } from "../types/nudge";
import HistoryTable from "./HistoryTable";

export default function HistoryTab({ history }: { history: NudgeHistoryItem[] }) {
  return (
    <div className="space-y-4">
      <section className="rounded-xl border border-[#EDE8DE] bg-white p-4 shadow-sm">
        <div className="grid gap-3 md:grid-cols-[140px_1fr_140px_140px_minmax(180px,1fr)]">
          {["Date range", "Rule", "Channel", "Status"].map((label) => (
            <button
              key={label}
              className="rounded-lg border border-[#EDE8DE] bg-white px-3 py-2 text-left text-sm font-medium text-[#5C6680]"
            >
              {label} ▾
            </button>
          ))}
          <input
            aria-label="Search learner"
            placeholder="Search learner..."
            className="rounded-lg border border-[#EDE8DE] px-3 py-2 text-sm text-[#1A2B5B] outline-none focus:border-[#F96A1E]"
          />
        </div>
      </section>

      <HistoryTable items={history} />
    </div>
  );
}
