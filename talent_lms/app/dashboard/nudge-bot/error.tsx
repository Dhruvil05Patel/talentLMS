"use client";

export default function Error({ reset }: { reset: () => void }) {
  return (
    <main className="flex min-h-screen items-center justify-center bg-slate-50 px-4">
      <div className="max-w-md rounded-2xl border border-slate-200 bg-white p-6 text-center shadow-sm">
        <h1 className="text-2xl font-semibold text-slate-900">NudgeBot dashboard failed to load</h1>
        <p className="mt-3 text-sm text-slate-600">The dashboard data is local-only in this clone, so a refresh usually restores the view.</p>
        <button onClick={reset} className="mt-5 rounded-full bg-slate-950 px-5 py-2.5 text-sm font-semibold text-white">Try again</button>
      </div>
    </main>
  );
}