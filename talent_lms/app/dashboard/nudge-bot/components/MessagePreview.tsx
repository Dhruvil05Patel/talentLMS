import { NudgePreview } from "../types/nudge";

export default function MessagePreview({ preview }: { preview: NudgePreview }) {
  return (
    <section className="rounded-2xl border border-slate-200 bg-white p-5 shadow-sm">
      <p className="text-sm font-medium text-slate-500">Message preview</p>
      <h3 className="mt-2 text-lg font-semibold text-slate-900">{preview.title}</h3>
      <div className="mt-4 rounded-2xl bg-slate-50 p-4 text-sm leading-6 text-slate-700">{preview.body}</div>
    </section>
  );
}