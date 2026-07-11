import ChannelBadge from "./ChannelBadge";
import type { NudgeHistoryItem } from "../types/nudge";

export default function HistoryTable({ items }: { items: NudgeHistoryItem[] }) {
  return (
    <section className="overflow-hidden rounded-2xl border border-slate-200 bg-white shadow-sm">
      <div className="border-b border-slate-200 px-5 py-4">
        <h3 className="text-lg font-semibold text-slate-900">Recent delivery history</h3>
      </div>
      <div className="overflow-x-auto">
        <table className="min-w-full divide-y divide-slate-200 text-left text-sm">
          <thead className="bg-slate-50 text-slate-500">
            <tr>
              <th className="px-5 py-3 font-medium">Rule</th>
              <th className="px-5 py-3 font-medium">Channel</th>
              <th className="px-5 py-3 font-medium">Status</th>
              <th className="px-5 py-3 font-medium">Created</th>
              <th className="px-5 py-3 font-medium">Engagement</th>
            </tr>
          </thead>
          <tbody className="divide-y divide-slate-100">
            {items.map((item) => (
              <tr key={item.id} className="text-slate-700">
                <td className="px-5 py-4">
                  <div className="font-medium text-slate-900">{item.ruleName}</div>
                  <div className="text-slate-500">{item.audience}</div>
                </td>
                <td className="px-5 py-4"><ChannelBadge channel={item.channel} /></td>
                <td className="px-5 py-4 capitalize">{item.status}</td>
                <td className="px-5 py-4">{item.createdAt}</td>
                <td className="px-5 py-4">
                  <div>{item.engagement}</div>
                  <div className="text-slate-500">{item.notes}</div>
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </section>
  );
}