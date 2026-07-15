import {
  Bell,
  CalendarClock,
  CheckCircle2,
  Clock3,
  Mail,
  MessageSquare,
  Play,
  RefreshCw,
  Smartphone,
} from "lucide-react";
import Footer from "../components/layout/Footer";
import Navbar from "../components/layout/navbar/Navbar";

const stats = [
  { label: "Total Nudges Sent", value: "1,842", note: "all time", color: "#1A2B5B" },
  { label: "Sent This Week", value: "312", note: "18% vs last week", color: "#F96A1E" },
  { label: "Active Rules", value: "6", note: "running automatically", color: "#1A5438" },
  { label: "Learners Re-engaged", value: "97", note: "within 48 hours", color: "#15803D" },
];

const rules = [
  {
    name: "Overdue Learners - Daily Email",
    trigger: "overdue · 7d inactive · 72h cooldown",
    lastRun: "Today · 4 sent",
    channel: "Email",
    accent: "#3B82F6",
  },
  {
    name: "At Risk - Weekly Slack Alert",
    trigger: "at-risk · 5d inactive · 48h cooldown",
    lastRun: "Mon · 11 sent",
    channel: "Slack",
    accent: "#4A154B",
  },
  {
    name: "Deadline Reminder - WhatsApp",
    trigger: "deadline within 3d · 24h cooldown",
    lastRun: "Yesterday · 8 sent",
    channel: "WhatsApp",
    accent: "#25D366",
  },
];

const history = [
  ["John Doe", "Safety Training", "Email", "Today 9am", "Sent"],
  ["Priya S.", "Onboarding 101", "Slack", "Today 9am", "Sent"],
  ["Mark T.", "Data Privacy", "Email", "Today 9am", "Failed"],
];

const workflow = [
  {
    icon: CalendarClock,
    title: "Define the trigger",
    body: "Target learners by risk status, inactivity, completion, deadline, course, or group.",
  },
  {
    icon: RefreshCw,
    title: "Generate the message",
    body: "Use AI-generated copy or a controlled template with tone, cooldown, and channel rules.",
  },
  {
    icon: Bell,
    title: "Deliver and log",
    body: "Send through email, Slack, WhatsApp, or portal notifications with a full audit trail.",
  },
];

export default function NudgeBotPage() {
  return (
    <main className="min-h-screen bg-[#FAF8F3] text-[#1A2B5B]">
      <Navbar />

      <section className="mx-auto grid max-w-[1340px] gap-10 px-6 pb-16 pt-16 md:px-10 lg:grid-cols-[0.85fr_1.15fr] lg:items-center lg:pt-24">
        <div>
          <div className="mb-5 flex items-center gap-3">
            <span className="h-7 w-1 rounded-full bg-[#F96A1E]" />
            <span className="text-xs font-bold uppercase tracking-[0.08em] text-[#F96A1E]">
              TalentLMS AI
            </span>
          </div>

          <h1 className="font-[var(--font-jakarta)] text-5xl font-extrabold leading-[1.03] text-[#1A2B5B] md:text-6xl">
            Nudge Bot
          </h1>

          <p className="mt-5 max-w-xl text-lg leading-8 text-[#5C6680]">
            Automated re-engagement for at-risk learners, built around clear rules, safe dry runs, and channel-aware AI messages.
          </p>

          <div className="mt-8 flex flex-col gap-3 sm:flex-row">
            <a
              href="/dashboard/nudge-bot"
              className="inline-flex items-center justify-center gap-2 rounded-full bg-[#1A5438] px-6 py-3 text-sm font-bold text-white shadow-sm transition hover:bg-[#123d29]"
            >
              <Play size={16} />
              Open Nudge Bot
            </a>
            <a
              href="/solutions/ai-solutions"
              className="inline-flex items-center justify-center rounded-full border border-[#1A2B5B] px-6 py-3 text-sm font-bold text-[#1A2B5B] transition hover:bg-white"
            >
              Explore AI solutions
            </a>
          </div>
        </div>

        <DashboardPreview />
      </section>

      <section className="mx-auto max-w-[1340px] px-6 py-10 md:px-10">
        <div className="grid gap-4 md:grid-cols-2 xl:grid-cols-4">
          {stats.map((stat) => (
            <article
              key={stat.label}
              className="rounded-xl border border-[#EDE8DE] border-t-4 bg-white p-5 shadow-sm"
              style={{ borderTopColor: stat.color }}
            >
              <p className="text-sm font-medium text-[#5C6680]">{stat.label}</p>
              <p className="mt-2 font-[var(--font-jakarta)] text-3xl font-extrabold" style={{ color: stat.color }}>
                {stat.value}
              </p>
              <p className="mt-2 text-xs font-medium text-[#9AA0B5]">{stat.note}</p>
            </article>
          ))}
        </div>
      </section>

      <section className="mx-auto grid max-w-[1340px] gap-8 px-6 py-14 md:px-10 lg:grid-cols-[0.9fr_1.1fr] lg:items-start">
        <div>
          <p className="text-xs font-bold uppercase tracking-[0.08em] text-[#F96A1E]">Rules engine</p>
          <h2 className="mt-3 font-[var(--font-jakarta)] text-4xl font-extrabold leading-tight text-[#1A2B5B]">
            Admins control when, why, and where every nudge goes.
          </h2>
          <p className="mt-4 text-base leading-7 text-[#5C6680]">
            The page follows the same four-tab model from the dashboard plan: overview, rules, history, and settings. Every message can be previewed before delivery.
          </p>
        </div>

        <div className="space-y-3">
          {rules.map((rule) => (
            <article key={rule.name} className="rounded-xl border border-[#EDE8DE] bg-white p-4 shadow-sm">
              <div className="flex flex-col gap-3 sm:flex-row sm:items-start sm:justify-between">
                <div className="flex gap-3">
                  <span className="mt-1 h-3 w-3 rounded-full" style={{ backgroundColor: rule.accent }} />
                  <div>
                    <h3 className="font-[var(--font-jakarta)] text-sm font-bold text-[#1A2B5B]">{rule.name}</h3>
                    <p className="mt-1 text-xs leading-5 text-[#5C6680]">{rule.trigger}</p>
                    <p className="mt-2 text-xs font-medium text-[#9AA0B5]">Last run: {rule.lastRun}</p>
                  </div>
                </div>
                <span className="w-fit rounded-md border border-[#EDE8DE] px-2 py-1 text-xs font-bold text-[#5C6680]">
                  {rule.channel}
                </span>
              </div>
            </article>
          ))}
        </div>
      </section>

      <section className="bg-white py-16">
        <div className="mx-auto max-w-[1340px] px-6 md:px-10">
          <div className="max-w-3xl">
            <p className="text-xs font-bold uppercase tracking-[0.08em] text-[#F96A1E]">Workflow</p>
            <h2 className="mt-3 font-[var(--font-jakarta)] text-4xl font-extrabold text-[#1A2B5B]">
              From risk signal to delivered reminder.
            </h2>
          </div>

          <div className="mt-8 grid gap-4 md:grid-cols-3">
            {workflow.map((item) => {
              const Icon = item.icon;

              return (
                <article key={item.title} className="rounded-xl border border-[#EDE8DE] bg-[#FAF8F3] p-5">
                  <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-white text-[#F96A1E]">
                    <Icon size={20} />
                  </div>
                  <h3 className="mt-4 font-[var(--font-jakarta)] text-lg font-bold text-[#1A2B5B]">{item.title}</h3>
                  <p className="mt-2 text-sm leading-6 text-[#5C6680]">{item.body}</p>
                </article>
              );
            })}
          </div>
        </div>
      </section>

      <section className="mx-auto grid max-w-[1340px] gap-8 px-6 py-16 md:px-10 lg:grid-cols-[1fr_1fr]">
        <HistoryPreview />
        <SettingsPreview />
      </section>

      <section className="mx-auto max-w-[1340px] px-6 pb-20 md:px-10">
        <div className="flex flex-col gap-5 rounded-xl border border-[#EDE8DE] bg-[#1A2B5B] p-8 text-white md:flex-row md:items-center md:justify-between">
          <div>
            <h2 className="font-[var(--font-jakarta)] text-3xl font-extrabold">Preview the dashboard workflow.</h2>
            <p className="mt-2 max-w-2xl text-sm leading-6 text-white/75">
              Open the protected dashboard route to see the tabs, dry run panel, rule drawer, history table, and settings cards.
            </p>
          </div>
          <a
            href="/dashboard/nudge-bot"
            className="inline-flex w-fit rounded-full bg-white px-6 py-3 text-sm font-bold text-[#1A2B5B]"
          >
            Go to dashboard
          </a>
        </div>
      </section>

      <Footer />
    </main>
  );
}

function DashboardPreview() {
  return (
    <div className="rounded-xl border border-[#EDE8DE] bg-white p-4 shadow-xl">
      <div className="flex flex-col gap-4 border-b border-[#EDE8DE] pb-4 sm:flex-row sm:items-start sm:justify-between">
        <div className="flex gap-3">
          <span className="h-7 w-1 rounded-full bg-[#F96A1E]" />
          <div>
            <h2 className="font-[var(--font-jakarta)] text-xl font-extrabold text-[#1A2B5B]">Nudge Bot</h2>
            <p className="mt-1 text-xs text-[#5C6680]">Last run: Today 09:00 · 12 sent</p>
          </div>
        </div>
        <button className="w-fit rounded-full bg-[#1A5438] px-4 py-2 text-xs font-bold text-white">Run Now</button>
      </div>

      <div className="mt-4 flex gap-6 border-b border-[#EDE8DE] text-sm font-semibold">
        {["Overview", "Rules", "History", "Settings"].map((tab, index) => (
          <span
            key={tab}
            className={`border-b-2 pb-3 ${index === 0 ? "border-[#F96A1E] text-[#1A2B5B]" : "border-transparent text-[#9AA0B5]"}`}
          >
            {tab}
          </span>
        ))}
      </div>

      <div className="mt-4 grid gap-3 sm:grid-cols-2">
        {stats.slice(0, 4).map((stat) => (
          <div key={stat.label} className="rounded-lg border border-[#EDE8DE] border-t-4 p-3" style={{ borderTopColor: stat.color }}>
            <p className="text-xs text-[#5C6680]">{stat.label}</p>
            <p className="mt-1 font-[var(--font-jakarta)] text-2xl font-extrabold" style={{ color: stat.color }}>
              {stat.value}
            </p>
          </div>
        ))}
      </div>

      <div className="mt-4 rounded-lg border border-[#BBF7D0] bg-[#F0FDF4] p-4">
        <div className="flex items-center justify-between">
          <p className="text-xs font-bold uppercase tracking-[0.08em] text-[#15803D]">Preview</p>
          <RefreshCw size={15} className="text-[#F96A1E]" />
        </div>
        <p className="mt-3 text-sm leading-6 text-[#1A2B5B]">
          Hey John! You are 42% through Safety Training. Picking it up for just 20 minutes today keeps you on track.
        </p>
      </div>
    </div>
  );
}

function HistoryPreview() {
  return (
    <section className="rounded-xl border border-[#EDE8DE] bg-white p-5 shadow-sm">
      <h2 className="font-[var(--font-jakarta)] text-xl font-bold text-[#1A2B5B]">Recent Nudges</h2>
      <div className="mt-4 overflow-x-auto">
        <table className="min-w-full text-left text-sm">
          <thead className="text-xs font-semibold text-[#9AA0B5]">
            <tr>
              <th className="py-3 pr-3">Learner</th>
              <th className="py-3 pr-3">Course</th>
              <th className="py-3 pr-3">Channel</th>
              <th className="py-3">Status</th>
            </tr>
          </thead>
          <tbody className="divide-y divide-[#EDE8DE]">
            {history.map(([learner, course, channel, , status]) => (
              <tr key={`${learner}-${course}`} className="text-[#5C6680]">
                <td className="py-3 pr-3 font-semibold text-[#1A2B5B]">{learner}</td>
                <td className="py-3 pr-3">{course}</td>
                <td className="py-3 pr-3">{channel}</td>
                <td className={`py-3 text-xs font-bold ${status === "Failed" ? "text-[#DC2626]" : "text-[#15803D]"}`}>
                  {status}
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </section>
  );
}

function SettingsPreview() {
  return (
    <section className="rounded-xl border border-[#EDE8DE] bg-white p-5 shadow-sm">
      <h2 className="font-[var(--font-jakarta)] text-xl font-bold text-[#1A2B5B]">Connected Channels</h2>
      <div className="mt-4 space-y-3">
        <ChannelRow icon={Mail} label="Email via Resend" detail="From: noreply@yourdomain.com" connected />
        <ChannelRow icon={MessageSquare} label="Slack" detail="Workspace channel or DM delivery" />
        <ChannelRow icon={Smartphone} label="WhatsApp via Twilio" detail="Approved template required" />
        <ChannelRow icon={Clock3} label="In-Portal" detail="TalentLMS learner notification" connected />
      </div>
    </section>
  );
}

function ChannelRow({
  icon: Icon,
  label,
  detail,
  connected = false,
}: {
  icon: typeof Mail;
  label: string;
  detail: string;
  connected?: boolean;
}) {
  return (
    <div className="flex items-center justify-between gap-3 rounded-lg border border-[#EDE8DE] p-3">
      <div className="flex items-center gap-3">
        <Icon size={18} className="text-[#F96A1E]" />
        <div>
          <p className="text-sm font-bold text-[#1A2B5B]">{label}</p>
          <p className="mt-1 text-xs text-[#5C6680]">{detail}</p>
        </div>
      </div>
      <span className={`rounded-full px-3 py-1 text-xs font-bold ${connected ? "bg-[#F0FDF4] text-[#15803D]" : "bg-[#F4F0E8] text-[#9AA0B5]"}`}>
        {connected ? "Connected" : "Not connected"}
      </span>
    </div>
  );
}

