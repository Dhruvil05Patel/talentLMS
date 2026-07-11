import ChannelBadge from "./ChannelBadge";
import type { NudgeRule } from "../types/nudge";

export default function RuleDrawer({ rule }: { rule: NudgeRule | null }) {
  return (
    <aside className="rounded-2xl border border-slate-200 bg-white p-5 shadow-sm">
      <p className="text-sm font-medium text-slate-500">Selected rule</p>
      {rule ? (
        <div className="mt-4 space-y-4">
          <div className="flex items-center justify-between gap-3">
            <h3 className="text-xl font-semibold text-slate-900">{rule.name}</h3>
            <ChannelBadge channel={rule.channel} />
          </div>
          <p className="text-sm text-slate-600">{rule.message}</p>
          <div className="grid gap-3 text-sm text-slate-600">
            <p><span className="text-slate-400">Audience:</span> {rule.audience}</p>
            <p><span className="text-slate-400">Trigger:</span> {rule.trigger}</p>
            <p><span className="text-slate-400">Cadence:</span> {rule.cadence}</p>
          </div>
        </div>
      ) : (
        <p className="mt-4 text-sm text-slate-600">Pick a rule to see the current targeting logic and preview message.</p>
      )}
    </aside>
  );
}