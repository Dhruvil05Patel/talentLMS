"use client";

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
  },
  {
    id: "rules",
    label: "Rules",
  },
  {
    id: "history",
    label: "History",
  },
  {
    id: "settings",
    label: "Settings",
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
    <div className="overflow-x-auto border-b border-[#EDE8DE]">
      <div className="inline-flex min-w-full gap-6">
        {tabs.map((tab) => {
          const active =
            activeTab === tab.id;

          const badge = getBadge(tab.id);

          return (
            <button
              key={tab.id}
              onClick={() =>
                onChange(tab.id)
              }
              className={`flex min-w-fit items-center justify-center gap-2 border-b-2 px-1 py-3 text-sm font-semibold transition ${
                active
                  ? "border-[#F96A1E] text-[#1A2B5B]"
                  : "border-transparent text-[#9AA0B5] hover:text-[#5C6680]"
              }`}
            >
              {tab.label}

              {badge !== undefined && (
                <span
                  className={`rounded-full px-2 py-0.5 text-xs ${
                    active
                      ? "bg-[#FFF3EC] text-[#F96A1E]"
                      : "bg-[#F4F0E8] text-[#9AA0B5]"
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
