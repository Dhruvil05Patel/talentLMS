"use client";

import {
  Send,
  CalendarDays,
  Bot,
  UserCheck,
} from "lucide-react";

import StatsCard from "../StatsCard";

interface Props {
  totalSent: number;
  sentThisWeek: number;
  weeklyGrowth: number;
  activeRules: number;
  reengagedLearners: number;
}

export default function NudgeStatsRow({
  totalSent,
  sentThisWeek,
  weeklyGrowth,
  activeRules,
  reengagedLearners,
}: Props) {
  return (
    <div className="mb-8 grid gap-6 md:grid-cols-2 xl:grid-cols-4">
      <StatsCard
        title="Total Nudges Sent"
        value={totalSent}
        subtitle="All time"
        icon={<Send size={22} />}
        color="blue"
      />

      <StatsCard
        title="Sent This Week"
        value={sentThisWeek}
        subtitle="Compared to last week"
        icon={<CalendarDays size={22} />}
        color="green"
        trend={weeklyGrowth}
      />

      <StatsCard
        title="Active Rules"
        value={activeRules}
        subtitle="Running automatically"
        icon={<Bot size={22} />}
        color="purple"
      />

      <StatsCard
        title="Learners Re-engaged"
        value={reengagedLearners}
        subtitle="Logged in within 48h"
        icon={<UserCheck size={22} />}
        color="amber"
      />
    </div>
  );
}