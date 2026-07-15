"use client";

import RunNowButton from "./shared/RunNowButton";

interface Props {
  lastRun: string;

  sentToday: number;

  loading?: boolean;

  onRunAll: () => void;

  onDryRun: () => void;

  onRefresh?: () => void;
}

export default function NudgeBotHeader({
  lastRun,

  sentToday,

  loading,

  onRunAll,

  onDryRun,
  onRefresh,
}: Props) {
  const handleRunAll = onRefresh ?? onRunAll;
  const handleDryRun = onRefresh ?? onDryRun;

  return (
    <header className="rounded-xl border border-[#EDE8DE] bg-white px-5 py-5 shadow-sm md:px-6">
      <div className="flex flex-col gap-5 md:flex-row md:items-start md:justify-between">
        <div className="flex gap-4">
          <span className="mt-1 h-7 w-1 rounded-full bg-[#F96A1E]" aria-hidden="true" />
          <div>
            <h1 className="font-[var(--font-jakarta)] text-[32px] font-extrabold leading-tight text-[#1A2B5B]">
              Nudge Bot
            </h1>

            <p className="mt-2 text-[15px] leading-6 text-[#5C6680]">
              Automated re-engagement for at-risk learners
            </p>

            <p className="mt-1 text-xs font-medium text-[#9AA0B5]">
              Last run: {lastRun} · {sentToday} sent
            </p>
          </div>
        </div>

        <RunNowButton
          loading={loading}
          onRunAll={handleRunAll}
          onDryRun={handleDryRun}
        />
      </div>
    </header>
  );
}
