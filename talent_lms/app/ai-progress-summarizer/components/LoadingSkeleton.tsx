"use client";

export default function LoadingSkeleton() {
  return (
    <div className="grid gap-6 md:grid-cols-2 xl:grid-cols-3">
      {Array.from({ length: 6 }).map((_, index) => (
        <div
          key={index}
          className="animate-pulse rounded-2xl border border-gray-200 bg-white p-6"
        >
          <div className="mb-6 flex items-center gap-4">
            <div className="h-14 w-14 rounded-full bg-gray-200" />

            <div className="flex-1">
              <div className="mb-2 h-4 w-32 rounded bg-gray-200" />
              <div className="h-3 w-48 rounded bg-gray-200" />
            </div>
          </div>

          <div className="mb-5 h-3 rounded bg-gray-200" />

          <div className="space-y-2">
            <div className="h-3 rounded bg-gray-200" />
            <div className="h-3 rounded bg-gray-200" />
            <div className="h-3 w-2/3 rounded bg-gray-200" />
          </div>

          <div className="mt-6 h-28 rounded-xl bg-blue-50" />
        </div>
      ))}
    </div>
  );
}