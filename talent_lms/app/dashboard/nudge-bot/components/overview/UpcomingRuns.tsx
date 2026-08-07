"use client";

import { Clock3 } from "lucide-react";

import { UpcomingRun } from "../../types/nudge";

interface Props {
  runs: UpcomingRun[];
}

export default function UpcomingRuns({
  runs,
}: Props) {
  return (
    <div className="rounded-2xl border border-gray-200 bg-white shadow-sm">
      <div className="border-b border-gray-100 px-6 py-5">
        <h2 className="text-xl font-semibold">
          Upcoming Scheduled Runs
        </h2>
      </div>

      <div className="divide-y">
        {runs.map((run) => (
          <div
            key={run.id}
            className="flex items-center gap-4 px-6 py-5"
          >
            <div className="rounded-xl bg-blue-100 p-3">
              <Clock3
                size={18}
                className="text-blue-600"
              />
            </div>

            <div className="flex-1">
              <p className="font-medium">
                {run.ruleName}
              </p>

              <p className="text-sm text-gray-500">
                {run.schedule}
              </p>
            </div>

            <span className="text-sm font-medium text-blue-600">
              {run.nextRun}
            </span>
          </div>
        ))}
      </div>
    </div>
  );
}