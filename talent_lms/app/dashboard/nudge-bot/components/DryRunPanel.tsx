export default function DryRunPanel({ enabled }: { enabled: boolean }) {
  return (
    <section className="rounded-2xl border border-slate-200 bg-white p-5 shadow-sm">
      <p className="text-sm font-medium text-slate-500">Dry run</p>
      <div className="mt-3 flex items-center justify-between gap-4">
        <div>
          <h3 className="text-lg font-semibold text-slate-900">{enabled ? "Simulation mode is on" : "Simulation mode is off"}</h3>
          <p className="mt-1 text-sm text-slate-600">Nudge execution is preview-only until you promote a rule.</p>
        </div>
        <span className={`rounded-full px-3 py-1 text-xs font-semibold ${enabled ? "bg-emerald-100 text-emerald-700" : "bg-slate-100 text-slate-600"}`}>
          {enabled ? "safe" : "live"}
        </span>
      </div>
    </section>
  );
}