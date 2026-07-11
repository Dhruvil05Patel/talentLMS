import { mockHistory } from "../data/mockHistory";
import { mockOverview } from "../data/mockOverview";
import { mockRules } from "../data/mockRules";
import { generatePreview } from "../lib/previewGenerator";
import DryRunPanel from "./DryRunPanel";
import MessagePreview from "./MessagePreview";
import StatsCard from "./StatsCard";

export default function OverviewTab() {
  const preview = generatePreview(mockRules[0]);

  return (
    <div className="grid gap-6 xl:grid-cols-[1.4fr_0.9fr]">
      <div className="space-y-6">
        <div className="grid gap-4 md:grid-cols-2 xl:grid-cols-4">
          {mockOverview.map((metric) => (
            <StatsCard key={metric.label} label={metric.label} value={metric.value} delta={metric.delta} />
          ))}
        </div>

        <DryRunPanel enabled />
      </div>

      <div className="space-y-6">
        <MessagePreview preview={preview} />
        <section className="rounded-2xl border border-slate-200 bg-white p-5 shadow-sm">
          <p className="text-sm font-medium text-slate-500">Latest activity</p>
          <div className="mt-4 space-y-4">
            {mockHistory.slice(0, 3).map((item) => (
              <div key={item.id} className="rounded-xl bg-slate-50 p-4">
                <div className="flex items-center justify-between gap-3">
                  <p className="font-medium text-slate-900">{item.ruleName}</p>
                  <span className="text-xs text-slate-500 capitalize">{item.status}</span>
                </div>
                <p className="mt-1 text-sm text-slate-600">{item.notes}</p>
              </div>
            ))}
          </div>
        </section>
      </div>
    </div>
  );
}