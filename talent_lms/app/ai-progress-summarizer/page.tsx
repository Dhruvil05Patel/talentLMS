"use client";

import { useMemo, useState } from "react";
import Navbar from "../components/layout/navbar/Navbar";
import Footer from "../components/layout/Footer";

type Risk = "on-track" | "at-risk" | "overdue" | "no-data";
type StatusFilter = "all" | Risk;

const riskStyles: Record<Risk, { badge: string; border: string; bar: string }> = {
  "on-track": { badge: "bg-[#F0FDF4] text-[#15803D]", border: "border-l-[#15803D]", bar: "#15803D" },
  "at-risk": { badge: "bg-[#FFF2EA] text-[#F96A1E]", border: "border-l-[#F96A1E]", bar: "#F96A1E" },
  overdue: { badge: "bg-[#FEF2F2] text-[#DC2626]", border: "border-l-[#DC2626]", bar: "#DC2626" },
  "no-data": { badge: "bg-[#EEF0F5] text-[#9AA0B5]", border: "border-l-[#9AA0B5]", bar: "#9AA0B5" },
};

interface Learner {
  id: number;
  name: string;
  email: string;
  course: string;
  group: string;
  progress: number;
  lastActive: number;
  quiz: number;
  deadline: string;
  risk: Risk;
  summary: string;
}

const courseNames = ["Safety", "HIPAA", "Cyber Security", "Leadership"];
const groupNames = ["HR", "Sales", "IT", "Finance"];

function getRisk(progress: number, lastActive: number, quiz: number): Risk {
  if (progress >= 75 && lastActive <= 5 && quiz >= 70) return "on-track";
  if (progress >= 40 && lastActive <= 10 && quiz >= 50) return "at-risk";
  return "overdue";
}

const learners: Learner[] = Array.from({ length: 50 }, (_, index) => {
  const progress = (index * 13 + 25) % 101;
  const lastActive = ((index * 3) % 15) + 1;
  const quiz = (index * 17 + 38) % 101;
  const risk = getRisk(progress, lastActive, quiz);

  return {
    id: index + 1,
    name: `Learner ${index + 1}`,
    email: `learner${index + 1}@company.com`,
    course: courseNames[index % courseNames.length],
    group: groupNames[index % groupNames.length],
    progress,
    lastActive,
    quiz,
    deadline: "2026-07-20",
    risk,
    summary: "Click Generate All Summaries to create an AI summary.",
  };
});

export default function ProgressSummarizerPage() {
  const [data, setData] = useState(learners);
  const [loading, setLoading] = useState(false);
  const [status, setStatus] = useState<StatusFilter>("all");
  const [search, setSearch] = useState("");

  const filtered = useMemo(() => {
    const query = search.toLowerCase();

    return data.filter((learner) => {
      const matchesStatus = status === "all" || learner.risk === status;
      const matchesSearch =
        learner.name.toLowerCase().includes(query) || learner.email.toLowerCase().includes(query);

      return matchesStatus && matchesSearch;
    });
  }, [data, status, search]);

  const stats = {
    total: data.length,
    onTrack: data.filter((entry) => entry.risk === "on-track").length,
    atRisk: data.filter((entry) => entry.risk === "at-risk").length,
    overdue: data.filter((entry) => entry.risk === "overdue").length,
  };

  async function generate() {
    setLoading(true);
    const updated = [...data];

    for (let index = 0; index < updated.length; index += 1) {
      await new Promise((resolve) => setTimeout(resolve, 40));
      updated[index] = {
        ...updated[index],
        summary: `${updated[index].name} has completed ${updated[index].progress}% of ${updated[index].course}. They were last active ${updated[index].lastActive} day(s) ago and scored ${updated[index].quiz}% on quizzes. Current risk: ${updated[index].risk}.`,
      };
      setData([...updated]);
    }

    setLoading(false);
  }

  return (
    <main className="w-full min-h-screen bg-[#FAF8F3]">
      <Navbar />

      <section className="mx-auto max-w-335 px-6 py-8 md:px-12">
        <div className="sticky top-19 z-20 bg-[#FAF8F3] pb-6 pt-2">
          <div className="flex flex-col gap-4 lg:flex-row lg:items-center lg:justify-between">
            <div className="flex items-center gap-3">
              <div className="h-8 w-1 bg-[#F96A1E]" />
              <div>
                <h1 className="font-[family-name:var(--font-jakarta)] text-3xl font-bold text-[#1A2B5B]">
                  AI Progress Summarizer
                </h1>
                <p className="text-[#5C6680]">Auto-generated summaries from TalentLMS data</p>
              </div>
            </div>

            <button
              onClick={generate}
              disabled={loading}
              className="rounded-full bg-[#1A5438] px-5 py-3 text-white transition hover:bg-[#123B28] disabled:cursor-not-allowed disabled:opacity-60"
            >
              {loading ? "Generating..." : "Generate All Summaries"}
            </button>
          </div>

          <div className="mt-6 grid grid-cols-2 gap-4 lg:grid-cols-4">
            {[
              ["Total", stats.total, "border-t-[3px] border-[#1A2B5B]", "text-[#1A2B5B]"],
              ["On Track", stats.onTrack, "border-t-[3px] border-[#15803D]", "text-[#15803D]"],
              ["At Risk", stats.atRisk, "border-t-[3px] border-[#F96A1E]", "text-[#F96A1E]"],
              ["Overdue", stats.overdue, "border-t-[3px] border-[#DC2626]", "text-[#DC2626]"],
            ].map(([title, value, topBorder, valueColor]) => (
              <div key={String(title)} className={`rounded-xl bg-white p-5 shadow-sm ${topBorder}`}>
                <p className={`text-3xl font-bold ${valueColor}`}>{value}</p>
                <p className="text-[#5C6680]">{title}</p>
              </div>
            ))}
          </div>

          <div className="mt-6 flex flex-wrap gap-4 rounded-xl bg-white p-4 shadow-sm">
            <input
              className="rounded border border-slate-200 px-3 py-2 outline-none focus:border-[#F96A1E] focus:ring-2 focus:ring-[#F96A1E]"
              placeholder="Search"
              value={search}
              onChange={(event) => setSearch(event.target.value)}
            />

            <select
              className="rounded border border-slate-200 px-3 py-2 outline-none focus:border-[#F96A1E] focus:ring-2 focus:ring-[#F96A1E]"
              value={status}
              onChange={(event) => setStatus(event.target.value as StatusFilter)}
            >
              <option value="all">All</option>
              <option value="on-track">On Track</option>
              <option value="at-risk">At Risk</option>
              <option value="overdue">Overdue</option>
            </select>
          </div>
        </div>

        <div className="mt-8 grid gap-6 lg:grid-cols-2 xl:grid-cols-3">
          {filtered.map((learner) => (
            <article
              key={learner.id}
              className={`rounded-xl bg-white p-5 shadow-sm border-l-4 ${riskStyles[learner.risk].border}`}
            >
              <div className="flex justify-between gap-4">
                <div>
                  <h2 className="font-[family-name:var(--font-jakarta)] font-semibold text-[#1A2B5B]">
                    {learner.name}
                  </h2>
                  <p className="text-sm text-[#5C6680]">{learner.email}</p>
                </div>

                <span
                  className={`rounded-[6px] px-3 py-1 text-[11px] font-semibold uppercase ${riskStyles[learner.risk].badge}`}
                >
                  {learner.risk}
                </span>
              </div>

              <div className="mt-5">
                <p className="text-sm text-[#5C6680]">{learner.course}</p>

                <div className="mt-2 h-3 w-full rounded-full bg-[#EDE8DE]">
                  <div
                    className="h-3 rounded-full"
                    style={{
                      width: `${learner.progress}%`,
                      backgroundColor: riskStyles[learner.risk].bar,
                    }}
                  />
                </div>

                <p className="mt-2 text-sm text-[#5C6680]">{learner.progress}% Complete</p>

                <div className="mt-4 grid grid-cols-2 gap-2 text-sm text-[#5C6680]">
                  <div>Last Active: {learner.lastActive}d</div>
                  <div>Quiz Avg: {learner.quiz}%</div>
                  <div>Deadline</div>
                  <div>{learner.deadline}</div>
                </div>

                <div className="mt-5 rounded-lg border border-[#FDDBC4] bg-[#FFF2EA] p-4 text-[#1A2B5B]">
                  {loading ? "Generating summary..." : learner.summary}
                </div>
              </div>
            </article>
          ))}
        </div>
      </section>

      <Footer />
    </main>
  );
}