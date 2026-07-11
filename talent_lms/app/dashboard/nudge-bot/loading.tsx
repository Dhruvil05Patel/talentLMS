export default function Loading() {
  return (
    <main className="min-h-screen bg-slate-50 px-4 py-8 md:px-8">
      <div className="mx-auto max-w-7xl space-y-6">
        <div className="h-48 animate-pulse rounded-[2rem] bg-slate-200" />
        <div className="grid gap-4 md:grid-cols-4">
          {Array.from({ length: 4 }).map((_, index) => (
            <div key={index} className="h-28 animate-pulse rounded-2xl bg-slate-200" />
          ))}
        </div>
        <div className="h-96 animate-pulse rounded-2xl bg-slate-200" />
      </div>
    </main>
  );
}