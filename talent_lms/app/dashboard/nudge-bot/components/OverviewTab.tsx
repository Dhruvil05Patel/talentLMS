import { overviewStats, upcomingRuns } from "../data/mockOverview";
import type { NudgeHistoryItem, NudgeRule } from "../types/nudge";
import ChannelBadge from "./ChannelBadge";
import StatsCard from "./StatsCard";

interface OverviewTabProps {
  rules: NudgeRule[];
  history: NudgeHistoryItem[];
  onInspect: (rule: NudgeRule) => void;
}

export default function OverviewTab({ rules, history, onInspect }: OverviewTabProps) {
  return (
    <div className="space-y-6">
      <div className="grid gap-4 md:grid-cols-2 xl:grid-cols-4">
        <StatsCard label="Total Nudges Sent" value={overviewStats.totalSent.toLocaleString()} subtitle="all time" color="navy" />
        <StatsCard label="Sent This Week" value={overviewStats.sentThisWeek} subtitle="with ↑ vs last week" color="orange" trend={overviewStats.weeklyGrowth} />
        <StatsCard label="Active Rules" value={overviewStats.activeRules} subtitle="running automatically" color="green" />
        <StatsCard label="Learners Re-engaged" value={overviewStats.reengagedLearners} subtitle="logged in within 48h" color="success" />
      </div>

      <section className="rounded-xl border border-[#EDE8DE] bg-white p-5 shadow-sm">
        <div className="flex items-center justify-between gap-4">
          <h2 className="font-[var(--font-jakarta)] text-lg font-bold text-[#1A2B5B]">Active Rules</h2>
        </div>
        <div className="mt-4 flex gap-4 overflow-x-auto pb-2">
          {rules.slice(0, 5).map((rule) => (
            <button
              key={rule.id}
              onClick={() => onInspect(rule)}
              className="min-w-[280px] rounded-[10px] border border-[#EDE8DE] bg-white p-4 text-left transition hover:bg-[#FAF8F3]"
            >
              <div className="flex items-start justify-between gap-3">
                <div>
                  <p className="font-[var(--font-jakarta)] text-sm font-bold text-[#1A2B5B]">{rule.name}</p>
                  <p className="mt-1 text-xs leading-5 text-[#5C6680]">
                    {rule.riskStatuses.join(", ")} · {rule.minInactiveDays}d inactive · {rule.cooldownHours}h cooldown
                  </p>
                </div>
                <ChannelBadge channel={rule.channel} compact />
              </div>
              <p className="mt-3 text-xs font-medium text-[#9AA0B5]">Last run: {rule.lastRun} · {rule.sentCount} sent</p>
              <span className="mt-3 inline-flex text-xs font-bold text-[#F96A1E]">Edit</span>
            </button>
          ))}
        </div>
      </section>

      <div className="grid gap-6 lg:grid-cols-[1.4fr_0.8fr]">
        <section className="rounded-xl border border-[#EDE8DE] bg-white p-5 shadow-sm">
          <h2 className="font-[var(--font-jakarta)] text-lg font-bold text-[#1A2B5B]">Recent Nudges</h2>
          <div className="mt-4 overflow-x-auto">
            <table className="min-w-full text-left text-sm">
              <thead className="text-xs font-semibold text-[#9AA0B5]">
                <tr>
                  <th className="py-3 pr-4">Learner</th>
                  <th className="py-3 pr-4">Course</th>
                  <th className="py-3 pr-4">Channel</th>
                  <th className="py-3 pr-4">Sent</th>
                  <th className="py-3">Status</th>
                </tr>
              </thead>
              <tbody className="divide-y divide-[#EDE8DE]">
                {history.slice(0, 10).map((item) => (
                  <tr key={item.id} className="text-[#5C6680]">
                    <td className="py-3 pr-4 font-semibold text-[#1A2B5B]">{item.audience}</td>
                    <td className="py-3 pr-4">{item.engagement}</td>
                    <td className="py-3 pr-4"><ChannelBadge channel={item.channel} compact /></td>
                    <td className="py-3 pr-4">{item.createdAt}</td>
                    <td className={`py-3 text-xs font-bold ${item.status === "failed" ? "text-[#DC2626]" : "text-[#15803D]"}`}>
                      {item.status === "failed" ? "✗ Failed" : "✓ Sent"}
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        </section>

        <section className="rounded-xl border border-[#EDE8DE] bg-white p-5 shadow-sm">
          <h2 className="font-[var(--font-jakarta)] text-lg font-bold text-[#1A2B5B]">Upcoming Runs</h2>
          <div className="mt-4 space-y-4">
            {upcomingRuns.slice(0, 3).map((run) => (
              <div key={run.id} className="grid grid-cols-[110px_1fr] gap-3 text-sm">
                <span className="text-[#9AA0B5]">{run.nextRun}</span>
                <span className="text-[#5C6680]">{run.ruleName}</span>
              </div>
            ))}
          </div>
        </section>
      </div>
    </div>
  );
}
