import ChannelBadge from "./ChannelBadge";
import { Switch } from "@/components/ui/switch";
import type { NudgeRule } from "../types/nudge";

export default function RuleCard({ rule, onInspect }: { rule: NudgeRule; onInspect: (rule: NudgeRule) => void }) {
  return (
    <article
      onClick={() => onInspect(rule)}
      className="grid cursor-pointer gap-4 py-4 transition hover:bg-[#FAF8F3] md:grid-cols-[minmax(0,1fr)_140px_120px_88px] md:items-center md:px-3"
    >
      <div className="flex items-center gap-3">
        <Switch checked={rule.enabled} aria-label={`${rule.name} enabled`} onClick={(event) => event.stopPropagation()} />
        <div>
          <h3 className="font-[var(--font-jakarta)] text-sm font-semibold text-[#1A2B5B]">{rule.name}</h3>
          <p className="mt-1 text-xs text-[#5C6680]">
            {rule.riskStatuses.join(", ")} · {rule.minInactiveDays}d inactive · {rule.cooldownHours}h cooldown
          </p>
        </div>
      </div>

      <ChannelBadge channel={rule.channel} compact />
      <span className="text-sm capitalize text-[#5C6680]">
        {rule.schedule === "manual" ? "Manual" : `${rule.schedule} ${rule.scheduleTime}`}
      </span>
      <button className="w-fit rounded-full px-3 py-1.5 text-sm font-bold text-[#F96A1E]">
        Edit
      </button>
    </article>
  );
}
