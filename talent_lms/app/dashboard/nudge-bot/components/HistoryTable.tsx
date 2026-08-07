import ChannelBadge from "./ChannelBadge";
import type { NudgeHistoryItem } from "../types/nudge";
import { CheckCircle2, XCircle } from "lucide-react";

export default function HistoryTable({ items }: { items: NudgeHistoryItem[] }) {
  return (
    <section className="overflow-hidden rounded-xl border border-[#EDE8DE] bg-white shadow-sm">
      <div className="border-b border-[#EDE8DE] px-5 py-4">
        <h3 className="font-[var(--font-jakarta)] text-lg font-bold text-[#1A2B5B]">Nudge History</h3>
      </div>
      <div className="overflow-x-auto">
        <table className="min-w-full text-left text-sm">
          <thead className="bg-[#FAF8F3] text-xs font-semibold text-[#9AA0B5]">
            <tr>
              <th className="px-5 py-3">#</th>
              <th className="px-5 py-3">Learner</th>
              <th className="px-5 py-3">Course</th>
              <th className="px-5 py-3">Channel</th>
              <th className="px-5 py-3">Sent At</th>
              <th className="px-5 py-3">Status</th>
              <th className="px-5 py-3">Actions</th>
            </tr>
          </thead>
          <tbody className="divide-y divide-[#EDE8DE]">
            {items.map((item) => (
              <tr key={item.id} className="even:bg-[#FAF8F3] text-[#5C6680]">
                <td className="px-5 py-4">{item.id.replace("history-", "")}</td>
                <td className="px-5 py-4">
                  <div className="font-[var(--font-jakarta)] text-sm font-semibold text-[#1A2B5B]">{item.audience}</div>
                  <div className="text-xs text-[#9AA0B5]">{item.ruleName}</div>
                </td>
                <td className="px-5 py-4">{item.engagement}</td>
                <td className="px-5 py-4"><ChannelBadge channel={item.channel} compact /></td>
                <td className="px-5 py-4">{item.createdAt}</td>
                <td className={`px-5 py-4 text-xs font-bold ${item.status === "failed" ? "text-[#DC2626]" : "text-[#15803D]"}`}>
                  {item.status === "failed" ? (
                    <span className="flex items-center gap-1"><XCircle size={14} /> Failed</span>
                  ) : (
                    <span className="flex items-center gap-1"><CheckCircle2 size={14} /> Sent</span>
                  )}
                </td>
                <td className="px-5 py-4">
                  <button className="text-sm font-bold text-[#F96A1E]">
                    {item.status === "failed" ? "Retry" : "View"}
                  </button>
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
      <div className="flex items-center justify-between border-t border-[#EDE8DE] px-5 py-4 text-sm text-[#5C6680]">
        <button className="font-semibold">← Previous</button>
        <span>Page 1 of 4</span>
        <button className="font-semibold">Next →</button>
      </div>
    </section>
  );
}
