"use client";

import { RefreshCcw } from "lucide-react";
import { Learner } from "../types/summarizer";
import RiskBadge from "./RiskBadge";

interface Props {
  learners: Learner[];
  onRegenerate: (id: number) => void;
}

export default function SummaryTable({
  learners,
  onRegenerate,
}: Props) {
  return (
    <div className="overflow-hidden rounded-2xl border border-gray-200 bg-white shadow-sm">
      <div className="overflow-x-auto">
        <table className="min-w-full">
          <thead className="bg-gray-50">
            <tr className="border-b">
              <th className="px-6 py-4 text-left text-sm font-semibold">
                Learner
              </th>

              <th className="px-6 py-4 text-left text-sm font-semibold">
                Course
              </th>

              <th className="px-6 py-4 text-left text-sm font-semibold">
                Progress
              </th>

              <th className="px-6 py-4 text-left text-sm font-semibold">
                Quiz
              </th>

              <th className="px-6 py-4 text-left text-sm font-semibold">
                Last Active
              </th>

              <th className="px-6 py-4 text-left text-sm font-semibold">
                Risk
              </th>

              <th className="px-6 py-4 text-left text-sm font-semibold">
                Summary
              </th>

              <th className="px-6 py-4 text-center text-sm font-semibold">
                Action
              </th>
            </tr>
          </thead>

          <tbody>
            {learners.map((learner) => (
              <tr
                key={learner.id}
                className="border-b last:border-none hover:bg-gray-50"
              >
                <td className="px-6 py-4">
                  <div className="flex items-center gap-3">
                    <img
                      src={learner.avatar}
                      alt={learner.name}
                      className="h-10 w-10 rounded-full"
                    />

                    <div>
                      <p className="font-medium">
                        {learner.name}
                      </p>

                      <p className="text-sm text-gray-500">
                        {learner.email}
                      </p>
                    </div>
                  </div>
                </td>

                <td className="px-6 py-4">
                  {learner.courseName}
                </td>

                <td className="px-6 py-4">
                  {learner.completion}%
                </td>

                <td className="px-6 py-4">
                  {learner.quizAverage}%
                </td>

                <td className="px-6 py-4">
                  {learner.lastActive}
                </td>

                <td className="px-6 py-4">
                  <RiskBadge risk={learner.risk} />
                </td>

                <td className="max-w-sm px-6 py-4 text-sm text-gray-600">
                  {learner.summary}
                </td>

                <td className="px-6 py-4 text-center">
                  <button
                    onClick={() =>
                      onRegenerate(learner.id)
                    }
                    className="rounded-lg border border-blue-200 p-2 text-blue-600 hover:bg-blue-50"
                  >
                    <RefreshCcw size={16} />
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