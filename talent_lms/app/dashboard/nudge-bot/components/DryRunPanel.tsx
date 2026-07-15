import { X } from "lucide-react";
import ChannelBadge from "./ChannelBadge";
import type { DryRunResult } from "../types/nudge";

interface DryRunPanelProps {
  results: DryRunResult[];
  onCancel: () => void;
  onConfirm: () => void;
}

export default function DryRunPanel({ results, onCancel, onConfirm }: DryRunPanelProps) {
  const sendCount = results.filter((result) => result.status === "send").length;

  return (
    <section className="rounded-xl border border-[#EDE8DE] bg-white p-5 shadow-sm">
      <div className="flex flex-col gap-3 sm:flex-row sm:items-center sm:justify-between">
        <h2 className="font-[var(--font-jakarta)] text-lg font-bold text-[#1A2B5B]">
          Dry Run - would send {sendCount} nudges
        </h2>
        <button onClick={onCancel} className="inline-flex items-center gap-2 text-sm font-semibold text-[#5C6680]">
          <X size={16} />
          Cancel
        </button>
      </div>

      <div className="mt-4 divide-y divide-[#EDE8DE]">
        {results.map((result) => (
          <div
            key={`${result.learner}-${result.course}`}
            className={`grid gap-3 py-3 text-sm md:grid-cols-[28px_1fr_1fr_120px_1fr] md:items-center ${
              result.status === "send" ? "text-[#1A2B5B]" : "text-[#9AA0B5]"
            }`}
          >
            <span className={result.status === "send" ? "font-bold text-[#15803D]" : "font-bold text-[#DC2626]"}>
              {result.status === "send" ? "✓" : "✗"}
            </span>
            <span className="font-semibold">{result.learner}</span>
            <span>{result.course}</span>
            <ChannelBadge channel={result.channel} compact />
            <span className={result.status === "skip" ? "italic text-[#F96A1E]" : "text-[#5C6680]"}>
              {result.status === "skip" ? `SKIP: ${result.reason}` : result.reason}
            </span>
          </div>
        ))}
      </div>

      <div className="mt-5 flex justify-end gap-3">
        <button onClick={onCancel} className="px-4 py-2 text-sm font-semibold text-[#5C6680]">
          Cancel
        </button>
        <button onClick={onConfirm} className="rounded-full bg-[#1A5438] px-5 py-2.5 text-sm font-bold text-white">
          Confirm & Send →
        </button>
      </div>
    </section>
  );
}
