import ChannelBadge from "./ChannelBadge";
import type { NudgeRule } from "../types/nudge";

export default function RuleCard({ rule, onInspect }: { rule: NudgeRule; onInspect: (rule: NudgeRule) => void }) {
  return (
    <article className="rounded-2xl border border-slate-200 bg-white p-5 shadow-sm">
      <div className="flex items-start justify-between gap-4">
        <div>
          <h3 className="text-lg font-semibold text-slate-900">{rule.name}</h3>
          <p className="mt-1 text-sm text-slate-500">{rule.audience}</p>
        </div>
        <ChannelBadge channel={rule.channel} />
      </div>

      <dl className="mt-4 grid grid-cols-2 gap-3 text-sm text-slate-600">
        <div>
          <dt className="text-slate-400">Trigger</dt>
          <dd>{rule.trigger}</dd>
        </div>
        <div>
          <dt className="text-slate-400">Cadence</dt>
          <dd>{rule.cadence}</dd>
        </div>
        <div>
          <dt className="text-slate-400">Success</dt>
          <dd>{rule.successRate}%</dd>
        </div>
        <div>
          <dt className="text-slate-400">Last run</dt>
          <dd>{rule.lastRun}</dd>
        </div>
      </dl>

      <p className="mt-4 rounded-xl bg-slate-50 p-3 text-sm text-slate-700">{rule.message}</p>

      <button onClick={() => onInspect(rule)} className="mt-4 inline-flex rounded-full bg-slate-950 px-4 py-2 text-sm font-semibold text-white">
        Inspect rule
      </button>
    </article>
  );
}