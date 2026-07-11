"use client";

import { Eye } from "lucide-react";

import { NudgeHistory } from "../../types/nudge";
import ChannelBadge from "../ChannelBadge";
import StatusBadge from "../StatusBadge";

interface Props {
  history: NudgeHistory[];
  onView: (item: NudgeHistory) => void;
}

export default function RecentNudgesList({
  history,
  onView,
}: Props) {
  const latest = history.slice(0, 10);

  return (
    <div className="rounded-2xl border border-gray-200 bg-white shadow-sm">
      <div className="border-b border-gray-100 px-6 py-5">
        <h2 className="text-xl font-semibold">
          Recent Nudges
        </h2>

        <p className="mt-1 text-sm text-gray-500">
          Last 10 deliveries
        </p>
      </div>

      <div className="overflow-x-auto">
        <table className="min-w-full">
          <thead className="bg-gray-50">
            <tr>
              <th className="px-6 py-4 text-left text-sm">
                Learner
              </th>

              <th className="px-6 py-4 text-left text-sm">
                Course
              </th>

              <th className="px-6 py-4 text-left text-sm">
                Channel
              </th>

              <th className="px-6 py-4 text-left text-sm">
                Message
              </th>

              <th className="px-6 py-4 text-left text-sm">
                Sent
              </th>

              <th className="px-6 py-4 text-left text-sm">
                Status
              </th>

              <th className="px-6 py-4 text-center text-sm">
                Action
              </th>
            </tr>
          </thead>

          <tbody>
            {latest.map((item) => (
              <tr
                key={item.id}
                className="border-b last:border-none hover:bg-gray-50"
              >
                <td className="px-6 py-4 font-medium">
                  {item.learner}
                </td>

                <td className="px-6 py-4">
                  {item.course}
                </td>

                <td className="px-6 py-4">
                  <ChannelBadge
                    channel={item.channel}
                  />
                </td>

                <td className="max-w-xs truncate px-6 py-4 text-sm text-gray-500">
                  {item.message}
                </td>

                <td className="px-6 py-4">
                  {item.sentAt}
                </td>

                <td className="px-6 py-4">
                  <StatusBadge
                    status={item.status}
                  />
                </td>

                <td className="px-6 py-4 text-center">
                  <button
                    onClick={() => onView(item)}
                    className="rounded-lg border p-2 hover:bg-gray-100"
                  >
                    <Eye size={16} />
                  </button>
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  );
}