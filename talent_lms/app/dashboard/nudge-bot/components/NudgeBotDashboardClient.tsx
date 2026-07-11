"use client";

import { useMemo, useState } from "react";
import { mockHistory } from "../data/mockHistory";
import { mockRules } from "../data/mockRules";
import { mockSettings } from "../data/mockSettings";
import type { NudgeRule, NudgeTab } from "../types/nudge";
import HistoryTab from "./HistoryTab";
import NudgeBotHeader from "./NudgeBotHeader";
import OverviewTab from "./OverviewTab";
import RuleDrawer from "./RuleDrawer";
import RulesTab from "./RulesTab";
import SettingsTab from "./SettingsTab";
import TabNavigation from "./TabNavigation";

export default function NudgeBotDashboardClient() {
  const [activeTab, setActiveTab] = useState<NudgeTab>("overview");
  const [selectedRule, setSelectedRule] = useState<NudgeRule | null>(mockRules[0]);
  const [refreshCount, setRefreshCount] = useState(0);

  const rules = useMemo(() => mockRules, []);

  return (
    <main className="min-h-screen bg-[radial-gradient(circle_at_top,_rgba(15,23,42,0.08),_transparent_32%),linear-gradient(180deg,#f8fafc_0%,#eef2ff_100%)] text-slate-900">
      <div className="mx-auto flex min-h-screen max-w-7xl flex-col gap-6 px-4 py-6 md:px-8 lg:px-10">
        <NudgeBotHeader onRefresh={() => setRefreshCount((value) => value + 1)} />

        <div className="flex flex-col gap-4 lg:flex-row lg:items-start">
          <div className="flex-1 space-y-4">
            <TabNavigation activeTab={activeTab} onChange={setActiveTab} />

            {activeTab === "overview" && <OverviewTab key={refreshCount} />}
            {activeTab === "rules" && <RulesTab rules={rules} onInspect={setSelectedRule} />}
            {activeTab === "history" && <HistoryTab history={mockHistory} />}
            {activeTab === "settings" && <SettingsTab settings={mockSettings} />}
          </div>

          <div className="w-full lg:max-w-sm">
            <RuleDrawer rule={selectedRule} />
          </div>
        </div>
      </div>
    </main>
  );
}