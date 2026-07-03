"use client";

import { Sparkles } from "lucide-react";

interface Props {
  generating: boolean;
  onGenerate: () => void;
}

export default function PageHeader({
  generating,
  onGenerate,
}: Props) {
  return (
    <div className="mb-10 flex flex-col gap-5 lg:flex-row lg:items-center lg:justify-between">
      <div>
        <h1 className="text-4xl font-bold text-gray-900">
          AI Progress Summarizer
        </h1>

        <p className="mt-3 max-w-2xl text-gray-600">
          Automatically summarize learner
          progress and generate AI-powered
          insights for instructors and managers.
        </p>
      </div>

      <button
        onClick={onGenerate}
        disabled={generating}
        className="inline-flex items-center gap-2 rounded-xl bg-blue-600 px-6 py-3 font-semibold text-white transition hover:bg-blue-700 disabled:cursor-not-allowed disabled:opacity-60"
      >
        <Sparkles size={18} />

        {generating
          ? "Generating..."
          : "Generate All Summaries"}
      </button>
    </div>
  );
}