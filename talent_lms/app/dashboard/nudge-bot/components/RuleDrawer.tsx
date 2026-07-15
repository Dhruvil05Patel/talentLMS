import { RefreshCw, X } from "lucide-react";
import type { ReactNode } from "react";
import { useState } from "react";
import { Switch } from "@/components/ui/switch";
import { previewNudgeMessage } from "../lib/api";
import type { NudgeRule } from "../types/nudge";

const defaultRule: Partial<NudgeRule> = {
  name: "New Nudge Rule",
  enabled: true,
  riskStatuses: ["at-risk", "overdue"],
  minInactiveDays: 7,
  completionBelow: 80,
  deadlineWithin: 14,
  course: "All Courses",
  schedule: "daily",
  scheduleTime: "09:00",
  channel: "email",
  cooldownHours: 72,
  messageMode: "ai-generated",
  tone: "encouraging",
};

export default function RuleDrawer({
  rule,
  open,
  onClose,
}: {
  rule: NudgeRule | null;
  open: boolean;
  onClose: () => void;
}) {
  const activeRule = rule ?? defaultRule;
  const [preview, setPreview] = useState<string | null>(null);
  const [generating, setGenerating] = useState(false);

  if (!open) return null;

  return (
    <div className="fixed inset-0 z-50 bg-[#1A2B5B]/20 backdrop-blur-sm" role="dialog" aria-modal="true">
      <aside className="ml-auto flex h-full w-full max-w-[480px] flex-col overflow-y-auto bg-white shadow-2xl">
        <header className="sticky top-0 z-10 border-b border-[#EDE8DE] bg-white p-5">
          <div className="flex items-start justify-between gap-4">
            <div>
              <p className="text-xs font-bold uppercase tracking-[0.08em] text-[#9AA0B5]">Rule</p>
              <h2 className="mt-1 font-[var(--font-jakarta)] text-lg font-bold text-[#1A2B5B]">
                {activeRule.name}
              </h2>
            </div>
            <button onClick={onClose} className="rounded-full p-2 text-[#5C6680] hover:bg-[#FAF8F3]" aria-label="Close rule drawer">
              <X size={18} />
            </button>
          </div>
          <div className="mt-4 flex items-center justify-between gap-3">
            <button className="text-sm font-semibold text-[#DC2626]">Delete</button>
            <button className="rounded-full bg-[#1A5438] px-5 py-2.5 text-sm font-bold text-white">Save ●</button>
          </div>
        </header>

        <div className="space-y-7 p-5">
          <section className="space-y-4">
            <DrawerSectionTitle>1. Trigger</DrawerSectionTitle>
            <div className="grid gap-3 text-sm text-[#5C6680]">
              <label className="flex items-center justify-between gap-3">
                <span>Enabled</span>
                <Switch checked={activeRule.enabled} />
              </label>
              <Field label="Risk status" value={activeRule.riskStatuses?.join(", ") ?? "at-risk, overdue"} />
              <Field label="Days inactive" value={`≥ ${activeRule.minInactiveDays} days`} />
              <Field label="Completion" value={`< ${activeRule.completionBelow}%`} />
              <Field label="Deadline within" value={`${activeRule.deadlineWithin} days`} />
              <Field label="Course" value={activeRule.course ?? "All Courses"} />
            </div>
          </section>

          <section className="space-y-4 border-t border-[#EDE8DE] pt-6">
            <DrawerSectionTitle>2. Schedule</DrawerSectionTitle>
            <div className="flex flex-wrap gap-3 text-sm text-[#5C6680]">
              {["daily", "weekly", "manual"].map((schedule) => (
                <span
                  key={schedule}
                  className={`rounded-full border px-3 py-2 capitalize ${
                    activeRule.schedule === schedule
                      ? "border-[#F96A1E] bg-[#FFF3EC] text-[#F96A1E]"
                      : "border-[#EDE8DE]"
                  }`}
                >
                  {schedule === "manual" ? "Manual only" : schedule}
                </span>
              ))}
            </div>
            <Field label="At" value={activeRule.scheduleTime ?? "09:00"} />
          </section>

          <section className="space-y-4 border-t border-[#EDE8DE] pt-6">
            <DrawerSectionTitle>3. Delivery</DrawerSectionTitle>
            <div className="flex flex-wrap gap-3 text-sm text-[#5C6680]">
              {["email", "slack", "whatsapp", "in-portal"].map((channel) => (
                <span
                  key={channel}
                  className={`rounded-full border px-3 py-2 capitalize ${
                    activeRule.channel === channel
                      ? "border-[#F96A1E] bg-[#FFF3EC] text-[#F96A1E]"
                      : "border-[#EDE8DE]"
                  }`}
                >
                  {channel}
                </span>
              ))}
            </div>
            <Field label="Cooldown" value={`${activeRule.cooldownHours} hours between nudges`} />
          </section>

          <section className="space-y-4 border-t border-[#EDE8DE] pt-6">
            <DrawerSectionTitle>4. Message</DrawerSectionTitle>
            <Field label="Mode" value={activeRule.messageMode === "template" ? "Custom template" : "AI-generated"} />
            <Field label="Tone" value={activeRule.tone ?? "encouraging"} />

            <div className="rounded-xl border border-[#BBF7D0] bg-[#F0FDF4] p-4">
              <div className="flex items-center justify-between gap-3">
                <p className="text-xs font-bold uppercase tracking-[0.08em] text-[#15803D]">✦ Preview</p>
                <button
                  className="rounded-full p-1.5 text-[#F96A1E]"
                  aria-label="Regenerate preview"
                  disabled={generating || !rule?.id}
                  onClick={async () => {
                    if (!rule?.id) return;
                    setGenerating(true);
                    try {
                      setPreview(await previewNudgeMessage(rule.id));
                    } catch {
                      setPreview(null);
                    } finally {
                      setGenerating(false);
                    }
                  }}
                >
                  <RefreshCw size={16} />
                </button>
              </div>
              <p className="mt-3 text-sm leading-7 text-[#1A2B5B]">
                {preview ??
                  activeRule.template ??
                  "Hey John! You're 42% through Safety Training. Picking it up for just 20 minutes today keeps you on track for your deadline."}
              </p>
            </div>
          </section>
        </div>
      </aside>
    </div>
  );
}

function DrawerSectionTitle({ children }: { children: ReactNode }) {
  return <h3 className="text-xs font-bold uppercase tracking-[0.08em] text-[#9AA0B5]">{children}</h3>;
}

function Field({ label, value }: { label: string; value: string }) {
  return (
    <div className="grid gap-1">
      <span className="text-xs font-semibold text-[#9AA0B5]">{label}</span>
      <span className="rounded-lg border border-[#EDE8DE] px-3 py-2 text-sm text-[#1A2B5B]">{value}</span>
    </div>
  );
}
