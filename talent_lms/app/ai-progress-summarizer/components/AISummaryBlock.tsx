"use client";

interface Props {
  summary: string;
}

export default function AISummaryBlock({
  summary,
}: Props) {
  return (
    <div className="rounded-xl border border-blue-100 bg-blue-50 p-4">
      <h4 className="mb-2 text-sm font-semibold text-blue-700">
        AI Summary
      </h4>

      <p className="text-sm leading-6 text-gray-700">
        {summary}
      </p>
    </div>
  );
}