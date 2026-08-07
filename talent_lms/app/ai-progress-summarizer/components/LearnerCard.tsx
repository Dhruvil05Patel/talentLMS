"use client";

import {
  Calendar,
  Clock3,
  Award,
  RefreshCcw,
} from "lucide-react";

import { Learner } from "../types/summarizer";
import ProgressBar from "./ProgressBar";
import RiskBadge from "./RiskBadge";
import AISummaryBlock from "./AISummaryBlock";

interface Props {
  learner: Learner;
  onRegenerate: (id: number) => void;
}

export default function LearnerCard({
  learner,
  onRegenerate,
}: Props) {
  return (
    <div className="rounded-2xl border border-gray-200 bg-white p-6 shadow-sm transition hover:shadow-lg flex flex-col h-full">
      <div className="flex items-start justify-between gap-3">
        <div className="flex gap-4 flex-1 min-w-0">
          <img
            src={learner.avatar}
            alt={learner.name}
            className="h-14 w-14 rounded-full object-cover shrink-0 ring-2 ring-gray-100 shadow-sm"
          />

          <div className="min-w-0 flex-1">
            <h2 className="text-lg font-bold text-gray-900 truncate">
              {learner.name}
            </h2>

            <p className="text-sm text-gray-500 truncate">
              {learner.email}
            </p>

            <p className="mt-0.5 text-sm font-semibold text-blue-600 truncate">
              {learner.courseName}
            </p>
          </div>
        </div>

        <div className="shrink-0">
          <RiskBadge risk={learner.risk} />
        </div>
      </div>

      <div className="mt-6">
        <ProgressBar
          value={learner.completion}
        />
      </div>

      <div className="mt-5 grid grid-cols-2 gap-4 text-sm">
        <div className="flex items-center gap-2">
          <Clock3 size={16} />

          {learner.timeSpent} mins
        </div>

        <div className="flex items-center gap-2">
          <Award size={16} />

          {learner.quizAverage}% Quiz
        </div>

        <div className="flex items-center gap-2">
          <Calendar size={16} />

          {learner.lastActive}
        </div>

        <div className="flex items-center gap-2">
          <Calendar size={16} />

          Due {learner.deadline}
        </div>
      </div>

      <div className="mt-6 mb-6">
        <AISummaryBlock
          summary={learner.summary}
        />
      </div>

      <button
        onClick={() =>
          onRegenerate(learner.id)
        }
        className="mt-auto flex items-center gap-2 rounded-xl border border-blue-200 px-4 py-2 text-sm font-medium text-blue-600 transition hover:bg-blue-50"
      >
        <RefreshCcw size={16} />

        Regenerate Summary
      </button>
    </div>
  );
}