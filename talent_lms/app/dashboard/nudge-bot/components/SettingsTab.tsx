import { connectedChannels } from "../data/mockOverview";
import { sendTestEmail } from "../lib/api";
import ChannelBadge from "./ChannelBadge";
import type { NudgeSettings } from "../types/nudge";

export default function SettingsTab({ settings }: { settings: NudgeSettings }) {
  return (
    <div className="space-y-6">
      <section>
        <h2 className="mb-3 text-xs font-bold uppercase tracking-[0.08em] text-[#9AA0B5]">Connected Channels</h2>
        <div className="grid gap-4">
          {connectedChannels.map((channel) => (
            <article key={channel.channel} className="rounded-xl border border-[#EDE8DE] bg-white p-5 shadow-sm">
              <div className="flex flex-col gap-4 sm:flex-row sm:items-start sm:justify-between">
                <div>
                  <ChannelBadge channel={channel.channel} />
                  <p className="mt-3 font-[var(--font-jakarta)] text-[15px] font-bold text-[#1A2B5B]">
                    {channel.provider}
                  </p>
                  <p className="mt-1 text-sm text-[#5C6680]">{channel.details}</p>
                </div>
                <span
                  className={`w-fit rounded-full px-3 py-1 text-xs font-bold ${
                    channel.connected ? "bg-[#F0FDF4] text-[#15803D]" : "bg-[#F4F0E8] text-[#9AA0B5]"
                  }`}
                >
                  {channel.connected ? "● Connected" : "○ Not connected"}
                </span>
              </div>
              <button
                onClick={async () => {
                  if (channel.channel !== "email") return;
                  await sendTestEmail().catch(() => undefined);
                }}
                className={`mt-4 rounded-full border px-4 py-2 text-sm font-bold ${
                  channel.channel === "email"
                    ? "border-[#F96A1E] text-[#F96A1E]"
                    : "border-[#1A2B5B] text-[#1A2B5B]"
                }`}
              >
                {channel.channel === "email" ? "Send Test Email →" : `Connect ${channel.provider} →`}
              </button>
            </article>
          ))}
        </div>
      </section>

      <section className="rounded-xl border border-[#EDE8DE] bg-white p-5 shadow-sm">
        <h2 className="text-xs font-bold uppercase tracking-[0.08em] text-[#9AA0B5]">Global Defaults</h2>
        <div className="mt-4 grid gap-4 md:grid-cols-3">
          <Field label="Max nudges per learner per week" value="3" />
          <Field label="Default tone" value="Encouraging ▾" />
          <Field label="Timezone" value={settings.timezone} />
        </div>
      </section>
    </div>
  );
}

function Field({ label, value }: { label: string; value: string }) {
  return (
    <label className="grid gap-2 text-sm text-[#5C6680]">
      <span>{label}</span>
      <span className="rounded-lg border border-[#EDE8DE] px-3 py-2 font-semibold text-[#1A2B5B]">{value}</span>
    </label>
  );
}
