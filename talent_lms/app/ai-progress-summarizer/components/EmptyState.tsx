"use client";

import { SearchX } from "lucide-react";

export default function EmptyState() {
  return (
    <div className="rounded-2xl border border-dashed border-gray-300 bg-white py-20 text-center">
      <SearchX
        size={60}
        className="mx-auto mb-5 text-gray-400"
      />

      <h2 className="text-2xl font-semibold text-gray-800">
        No learners found
      </h2>

      <p className="mx-auto mt-3 max-w-md text-gray-500">
        Try changing your search or filters. If this employer has no assigned learners yet, add learners in Supabase and make sure their `employer_id` matches this account.
      </p>
    </div>
  );
}
