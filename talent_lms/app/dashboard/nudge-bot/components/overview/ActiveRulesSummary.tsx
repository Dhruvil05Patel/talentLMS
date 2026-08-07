"use client";

import { Switch } from "@/components/ui/switch";
import { Edit2 } from "lucide-react";

import { NudgeRule } from "../../types/nudge";
import ChannelBadge from "../ChannelBadge";

interface Props {
  rules: NudgeRule[];
  onToggle: (id: string) => void;
  onEdit: (rule: NudgeRule) => void;
}

export default function ActiveRulesSummary({
  rules,
  onToggle,
  onEdit,
}: Props) {
  const enabledRules = rules.filter((rule) => rule.enabled);

  if (!enabledRules.length) {
    return (
      <div className="rounded-2xl border border-dashed border-gray-300 bg-white p-12 text-center">
        <h3 className="text-lg font-semibold">
          No active rules
        </h3>

        <p className="mt-2 text-gray-500">
          Enable a rule to start sending nudges.
        </p>
      </div>
    );
  }

  return (
    <div className="overflow-x-auto">
      <div className="flex gap-5 pb-2">
        {enabledRules.map((rule) => (
          <div
            key={rule.id}
            className="min-w-[360px] rounded-2xl border border-gray-200 bg-white p-6 shadow-sm"
          >
            <div className="flex items-start justify-between">
              <div>
                <h3 className="font-semibold text-gray-900">
                  {rule.name}
                </h3>

                <div className="mt-3">
                  <ChannelBadge
                    channel={rule.channel}
                  />
                </div>
              </div>

              <Switch
                checked={rule.enabled}
                onCheckedChange={() =>
                  onToggle(rule.id)
                }
              />
            </div>

            <div className="mt-5 space-y-2 text-sm text-gray-600">
              <p>
                Trigger:
                {" "}
                {rule.riskStatuses.join(", ")}
              </p>

              <p>
                Inactive ≥ {rule.minInactiveDays} days
              </p>

              <p>
                Cooldown: {rule.cooldownHours}h
              </p>

              <p>
                Schedule: {rule.schedule}
              </p>

              <p>
                Last run: {rule.lastRun}
              </p>

              <p>
                Sent: {rule.sentCount}
              </p>
            </div>

            <button
              onClick={() => onEdit(rule)}
              className="mt-5 flex items-center gap-2 text-sm font-medium text-blue-600 hover:text-blue-700"
            >
              <Edit2 size={16} />
              Edit Rule
            </button>
          </div>
        ))}
      </div>
    </div>
  );
}