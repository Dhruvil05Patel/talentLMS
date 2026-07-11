import type { NudgeSettings } from "../types/nudge";

export default function SettingsTab({ settings }: { settings: NudgeSettings }) {
  return (
    <div className="grid gap-4 lg:grid-cols-2">
      <section className="rounded-2xl border border-slate-200 bg-white p-5 shadow-sm">
        <h3 className="text-lg font-semibold text-slate-900">Delivery preferences</h3>
        <dl className="mt-4 space-y-3 text-sm text-slate-600">
          <div className="flex justify-between gap-4"><dt className="text-slate-400">Default channel</dt><dd className="font-medium text-slate-900 capitalize">{settings.defaultChannel}</dd></div>
          <div className="flex justify-between gap-4"><dt className="text-slate-400">Timezone</dt><dd className="font-medium text-slate-900">{settings.timezone}</dd></div>
          <div className="flex justify-between gap-4"><dt className="text-slate-400">Quiet hours</dt><dd className="font-medium text-slate-900">{settings.quietHours}</dd></div>
        </dl>
      </section>

      <section className="rounded-2xl border border-slate-200 bg-white p-5 shadow-sm">
        <h3 className="text-lg font-semibold text-slate-900">Operational flags</h3>
        <div className="mt-4 space-y-3 text-sm text-slate-600">
          <p>Digest email: <span className="font-medium text-slate-900">{settings.sendDigest ? "enabled" : "disabled"}</span></p>
          <p>Dry run mode: <span className="font-medium text-slate-900">{settings.dryRunMode ? "enabled" : "disabled"}</span></p>
        </div>
      </section>
    </div>
  );
}