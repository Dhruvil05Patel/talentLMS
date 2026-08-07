"use client";

import { Learner } from "../types/summarizer";
import LearnerCard from "./LearnerCard";

interface SummaryGridProps {
  learners: Learner[];
  onRegenerate: (id: number) => void;
}

export default function SummaryGrid({
  learners,
  onRegenerate,
}: SummaryGridProps) {
  if (!learners.length) return null;

  return (
    <div className="grid gap-6 md:grid-cols-2 xl:grid-cols-3">
      {learners.map((learner) => (
        <LearnerCard
          key={learner.id}
          learner={learner}
          onRegenerate={onRegenerate}
        />
      ))}
    </div>
  );
}