"use client";

import { useMemo, useState } from "react";
import Navbar from "../components/layout/navbar/Navbar";
import Footer from "../components/layout/Footer";

type Risk = "on-track" | "at-risk" | "overdue";
type StatusFilter = "all" | Risk;

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
    <main className="w-full min-h-screen bg-[#f7f7f5]">
      <Navbar />

      <section className="mx-auto max-w-335 px-6 py-8 md:px-12">
        <div className="sticky top-19 z-20 bg-[#f7f7f5] pb-6 pt-2">
          <div className="flex flex-col gap-4 lg:flex-row lg:items-center lg:justify-between">
            <div>
              <h1 className="text-3xl font-bold text-slate-900">AI Progress Summarizer</h1>
              <p className="text-slate-500">Auto-generated summaries from TalentLMS data</p>
            </div>

            <button
              onClick={generate}
              disabled={loading}
              className="rounded-lg bg-blue-600 px-5 py-3 text-white disabled:cursor-not-allowed disabled:opacity-60"
            >
              {loading ? "Generating..." : "Generate All Summaries"}
            </button>
          </div>

          <div className="mt-6 grid grid-cols-2 gap-4 lg:grid-cols-4">
            {[
              ["Total", stats.total],
              ["On Track", stats.onTrack],
              ["At Risk", stats.atRisk],
              ["Overdue", stats.overdue],
            ].map(([title, value]) => (
              <div key={String(title)} className="rounded-xl bg-white p-5 shadow-sm">
                <p className="text-3xl font-bold text-slate-900">{value}</p>
                <p className="text-slate-500">{title}</p>
              </div>
            ))}
          </div>

          <div className="mt-6 flex flex-wrap gap-4 rounded-xl bg-white p-4 shadow-sm">
            <input
              className="rounded border border-slate-200 px-3 py-2 outline-none focus:border-blue-500"
              placeholder="Search"
              value={search}
              onChange={(event) => setSearch(event.target.value)}
            />

            <select
              className="rounded border border-slate-200 px-3 py-2 outline-none focus:border-blue-500"
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
            <article key={learner.id} className="rounded-xl bg-white p-5 shadow-sm">
              <div className="flex justify-between gap-4">
                <div>
                  <h2 className="font-semibold text-slate-900">{learner.name}</h2>
                  <p className="text-sm text-slate-500">{learner.email}</p>
                </div>

                <span className="rounded-full bg-slate-200 px-3 py-1 text-xs capitalize text-slate-700">
                  {learner.risk}
                </span>
              </div>

              <div className="mt-5">
                <p className="text-sm text-slate-700">{learner.course}</p>

                <div className="mt-2 h-3 w-full rounded-full bg-slate-200">
                  <div
                    className="h-3 rounded-full bg-blue-600"
                    style={{ width: `${learner.progress}%` }}
                  />
                </div>

                <p className="mt-2 text-sm text-slate-700">{learner.progress}% Complete</p>

                <div className="mt-4 grid grid-cols-2 gap-2 text-sm text-slate-700">
                  <div>Last Active: {learner.lastActive}d</div>
                  <div>Quiz Avg: {learner.quiz}%</div>
                  <div>Deadline</div>
                  <div>{learner.deadline}</div>
                </div>

                <div className="mt-5 rounded-lg border border-blue-100 bg-blue-50 p-4 text-slate-800">
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