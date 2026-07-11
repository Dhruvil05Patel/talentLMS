"use client";

import RunNowButton from "./shared/RunNowButton";

interface Props {
  lastRun: string;

  sentToday: number;

  loading?: boolean;

  onRunAll: () => void;

  onDryRun: () => void;
}

export default function NudgeBotHeader({
  lastRun,

  sentToday,

  loading,

  onRunAll,

  onDryRun,
}: Props) {
  return (
    <div className="mb-8">
      <div className="flex flex-col gap-5 lg:flex-row lg:items-center lg:justify-between">
        <div>
          <h1 className="text-4xl font-bold text-gray-900">
            Nudge Bot
          </h1>

          <p className="mt-2 text-gray-500">
            Last run: {lastRun} •{" "}
            {sentToday} sent
          </p>
        </div>

        <RunNowButton
          loading={loading}
          onRunAll={onRunAll}
          onDryRun={onDryRun}
        />
      </div>
    </div>
  );
}