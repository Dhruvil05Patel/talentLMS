"use client";

import {
  BarChart3,
  Bot,
  History,
  Settings,
} from "lucide-react";

export type NudgeTab =
  | "overview"
  | "rules"
  | "history"
  | "settings";

interface TabNavigationProps {
  activeTab: NudgeTab;
  onChange: (tab: NudgeTab) => void;

  overviewCount?: number;
  rulesCount?: number;
  historyCount?: number;
}

const tabs = [
  {
    id: "overview",
    label: "Overview",
    icon: BarChart3,
  },
  {
    id: "rules",
    label: "Rules",
    icon: Bot,
  },
  {
    id: "history",
    label: "History",
    icon: History,
  },
  {
    id: "settings",
    label: "Settings",
    icon: Settings,
  },
] as const;

export default function TabNavigation({
  activeTab,
  onChange,
  overviewCount,
  rulesCount,
  historyCount,
}: TabNavigationProps) {
  const getBadge = (id: NudgeTab) => {
    switch (id) {
      case "overview":
        return overviewCount;

      case "rules":
        return rulesCount;

      case "history":
        return historyCount;

      default:
        return undefined;
    }
  };

  return (
    <div className="mb-8 overflow-x-auto">
      <div className="inline-flex min-w-full rounded-2xl border border-gray-200 bg-white p-2 shadow-sm">
        {tabs.map((tab) => {
          const Icon = tab.icon;

          const active =
            activeTab === tab.id;

          const badge = getBadge(tab.id);

          return (
            <button
              key={tab.id}
              onClick={() =>
                onChange(tab.id)
              }
              className={`flex flex-1 items-center justify-center gap-2 rounded-xl px-5 py-3 text-sm font-medium transition-all ${
                active
                  ? "bg-blue-600 text-white shadow"
                  : "text-gray-600 hover:bg-gray-100"
              }`}
            >
              <Icon size={18} />

              {tab.label}

              {badge !== undefined && (
                <span
                  className={`rounded-full px-2 py-0.5 text-xs ${
                    active
                      ? "bg-white/20 text-white"
                      : "bg-gray-200 text-gray-700"
                  }`}
                >
                  {badge}
                </span>
              )}
            </button>
          );
        })}
      </div>
    </div>
  );
}