import Link from "next/link";
import { BarChart3, BellRing, CheckCircle2, Sparkles } from "lucide-react";
import Footer from "../../components/layout/Footer";
import Navbar from "../../components/layout/navbar/Navbar";

const solutions = [
  {
    title: "AI Progress Summarizer",
    href: "/ai-progress-summarizer",
    icon: BarChart3,
    description:
      "Turn learner progress, risk signals, and completion data into concise summaries for admins.",
    highlights: ["Risk grouped summaries", "Generate all summaries", "Learner-level cards"],
    accent: "#1A2B5B",
  },
  {
    title: "Nudge Bot",
    href: "/solutions/ai-solutions/nudge-bot",
    icon: BellRing,
    description:
      "Automate re-engagement with rules, dry runs, channel settings, and AI-generated learner nudges.",
    highlights: ["Rules and cooldowns", "Dry run preview", "Email, Slack, WhatsApp"],
    accent: "#F96A1E",
  },
];

export default function AiSolutionsPage() {
  return (
    <main className="min-h-screen bg-[#FAF8F3] text-[#1A2B5B]">
      <Navbar />

      <section className="mx-auto max-w-[1340px] px-6 pb-16 pt-16 md:px-10 lg:pt-24">
        <div className="max-w-3xl">
          <div className="mb-5 flex items-center gap-3">
            <span className="h-7 w-1 rounded-full bg-[#F96A1E]" />
            <span className="text-xs font-bold uppercase tracking-[0.08em] text-[#F96A1E]">
              TalentLMS AI Solutions
            </span>
          </div>

          <h1 className="font-[var(--font-jakarta)] text-5xl font-extrabold leading-tight text-[#1A2B5B] md:text-6xl">
            AI tools for learner progress and re-engagement.
          </h1>

          <p className="mt-5 text-lg leading-8 text-[#5C6680]">
            Use summarization to understand learner risk, then use Nudge Bot to act on it with governed automated messages.
          </p>
        </div>

        <div className="mt-10 grid gap-5 lg:grid-cols-2">
          {solutions.map((solution) => {
            const Icon = solution.icon;

            return (
              <Link
                key={solution.title}
                href={solution.href}
                className="group rounded-xl border border-[#EDE8DE] border-t-4 bg-white p-6 shadow-sm transition hover:-translate-y-0.5 hover:shadow-md"
                style={{ borderTopColor: solution.accent }}
              >
                <div className="flex items-start justify-between gap-4">
                  <div className="flex h-12 w-12 items-center justify-center rounded-xl bg-[#FAF8F3]" style={{ color: solution.accent }}>
                    <Icon size={24} />
                  </div>
                  <span className="rounded-full border border-[#EDE8DE] px-4 py-2 text-sm font-bold text-[#1A2B5B] transition group-hover:border-[#F96A1E] group-hover:text-[#F96A1E]">
                    Open →
                  </span>
                </div>

                <h2 className="mt-5 font-[var(--font-jakarta)] text-2xl font-extrabold text-[#1A2B5B]">
                  {solution.title}
                </h2>
                <p className="mt-3 text-sm leading-7 text-[#5C6680]">{solution.description}</p>

                <ul className="mt-5 grid gap-3">
                  {solution.highlights.map((highlight) => (
                    <li key={highlight} className="flex items-center gap-3 text-sm font-semibold text-[#1A2B5B]">
                      <CheckCircle2 size={17} className="text-[#15803D]" />
                      {highlight}
                    </li>
                  ))}
                </ul>
              </Link>
            );
          })}
        </div>
      </section>

      <section className="bg-white py-16">
        <div className="mx-auto grid max-w-[1340px] gap-8 px-6 md:px-10 lg:grid-cols-[0.8fr_1.2fr] lg:items-center">
          <div>
            <p className="text-xs font-bold uppercase tracking-[0.08em] text-[#F96A1E]">Designed as a workflow</p>
            <h2 className="mt-3 font-[var(--font-jakarta)] text-4xl font-extrabold text-[#1A2B5B]">
              Summarize risk. Preview action. Send the right nudge.
            </h2>
            <p className="mt-4 text-base leading-7 text-[#5C6680]">
              The AI Solutions tab now links to live product surfaces instead of placeholders, including the complete Nudge Bot design.
            </p>
          </div>

          <div className="rounded-xl border border-[#EDE8DE] bg-[#FAF8F3] p-5">
            <div className="grid gap-4 md:grid-cols-3">
              {["Risk detected", "Message previewed", "Nudge delivered"].map((label, index) => (
                <div key={label} className="rounded-xl border border-[#EDE8DE] bg-white p-4">
                  <div className="flex h-10 w-10 items-center justify-center rounded-full bg-[#FFF3EC] text-[#F96A1E]">
                    {index === 0 ? <BarChart3 size={19} /> : index === 1 ? <Sparkles size={19} /> : <BellRing size={19} />}
                  </div>
                  <p className="mt-4 font-[var(--font-jakarta)] text-lg font-bold text-[#1A2B5B]">{label}</p>
                  <p className="mt-2 text-sm leading-6 text-[#5C6680]">
                    {index === 0
                      ? "Summaries surface the learners who need attention."
                      : index === 1
                      ? "Admins dry-run rules before anything is sent."
                      : "Channels and history keep delivery accountable."}
                  </p>
                </div>
              ))}
            </div>
          </div>
        </div>
      </section>

      <Footer />
    </main>
  );
}

