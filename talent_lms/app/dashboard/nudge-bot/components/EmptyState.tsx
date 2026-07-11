"use client";

import { Inbox } from "lucide-react";

interface Props {
  title: string;
  description: string;
}

export default function EmptyState({
  title,
  description,
}: Props) {
  return (
    <div className="rounded-2xl border border-dashed border-gray-300 bg-white py-20 text-center">
      <Inbox
        size={56}
        className="mx-auto mb-5 text-gray-400"
      />

      <h2 className="text-2xl font-semibold text-gray-900">
        {title}
      </h2>

      <p className="mx-auto mt-3 max-w-md text-gray-500">
        {description}
      </p>
    </div>
  );
}