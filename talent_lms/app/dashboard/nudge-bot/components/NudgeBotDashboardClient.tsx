"use client";

import { useEffect, useMemo, useState } from "react";
import { dryRunResults } from "../data/mockOverview";
import { dryRunNudges, fetchNudgeHistory, fetchNudgeRules, runNudges } from "../lib/api";
import { mockSettings } from "../data/mockSettings";
import type { DryRunResult, NudgeHistoryItem, NudgeRule, NudgeTab } from "../types/nudge";
import DryRunPanel from "./DryRunPanel";
import HistoryTab from "./HistoryTab";
import NudgeBotHeader from "./NudgeBotHeader";
import OverviewTab from "./OverviewTab";
import RuleDrawer from "./RuleDrawer";
import RulesTab from "./RulesTab";
import SettingsTab from "./SettingsTab";
import TabNavigation from "./TabNavigation";

export default function NudgeBotDashboardClient() {
  const [activeTab, setActiveTab] = useState<NudgeTab>("overview");
  const [selectedRule, setSelectedRule] = useState<NudgeRule | null>(null);
  const [drawerOpen, setDrawerOpen] = useState(false);
  const [showDryRun, setShowDryRun] = useState(false);
  const [refreshCount, setRefreshCount] = useState(0);
  const [rules, setRules] = useState<NudgeRule[]>([]);
  const [history, setHistory] = useState<NudgeHistoryItem[]>([]);

  const [dryRun, setDryRun] = useState<DryRunResult[]>(dryRunResults);
  const [loading, setLoading] = useState(false);

  const activeRules = useMemo(() => rules.filter((rule) => rule.enabled), [rules]);

  useEffect(() => {
    let cancelled = false;

    async function load() {
      try {
        const [remoteRules, remoteHistory] = await Promise.all([fetchNudgeRules(), fetchNudgeHistory()]);
        if (!cancelled) {
          if (remoteRules.length) setRules(remoteRules);
          setHistory(remoteHistory);
        }
      } catch {
        // If backend is unavailable (auth/DB issues), keep UI empty rather than showing stale mocks.
        // eslint-disable-next-line no-console
        console.warn("Nudge Bot: failed to load rules/history; rendering empty state.");
      }

    }

    void load();
    return () => {
      cancelled = true;
    };
  }, [refreshCount]);

  const openRule = (rule: NudgeRule) => {
    setSelectedRule(rule);
    setDrawerOpen(true);
  };

  const openNewRule = () => {
    setSelectedRule(null);
    setDrawerOpen(true);
  };

  return (
    <main className="min-h-screen bg-[#FAF8F3] text-[#1A2B5B]">
      <div className="mx-auto flex min-h-screen max-w-7xl flex-col gap-6 px-4 py-6 md:px-8 lg:px-10">
        <NudgeBotHeader
          lastRun="Today 09:00"
          sentToday={12}
          loading={loading}
          onRunAll={async () => {
            setLoading(true);
            try {
              await runNudges();
              setShowDryRun(false);
              setRefreshCount((value) => value + 1);
            } catch {
              setRefreshCount((value) => value + 1);
            } finally {
              setLoading(false);
            }
          }}
          onDryRun={async () => {
            setLoading(true);
            try {
              const result = await dryRunNudges();
              setDryRun(
                result.results.map((item) => ({
                  learner: item.learner_name ?? item.learner ?? "Learner",
                  course: item.course_name ?? item.course ?? "Course",
                  channel: item.channel,
                  status: item.status,
                  reason: item.reason,
                }))
              );
            } catch {
              setDryRun(dryRunResults);
            } finally {
              setLoading(false);
              setShowDryRun(true);
            }
          }}
        />

        {showDryRun && (
          <DryRunPanel
            results={dryRun}
            onCancel={() => setShowDryRun(false)}
            onConfirm={() => {
              setShowDryRun(false);
              setRefreshCount((value) => value + 1);
            }}
          />
        )}

        <div className="space-y-5">
          <TabNavigation activeTab={activeTab} onChange={setActiveTab} />

          {activeTab === "overview" && (
            <OverviewTab key={refreshCount} rules={activeRules} history={history} onInspect={openRule} />
          )}
          {activeTab === "rules" && <RulesTab rules={rules} onInspect={openRule} onCreate={openNewRule} />}
          {activeTab === "history" && <HistoryTab history={history} />}
          {activeTab === "settings" && <SettingsTab settings={mockSettings} />}
        </div>

        <RuleDrawer rule={selectedRule} open={drawerOpen} onClose={() => setDrawerOpen(false)} />
      </div>
    </main>
  );
}
