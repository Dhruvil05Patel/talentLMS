"use client";

import { useEffect, useMemo, useState } from "react";
import { useRouter } from "next/navigation";
import { AuthContext } from "@/components/AuthProvider";
import { useContext } from "react";
import {
  Users,
  CheckCircle2,
  AlertTriangle,
  Clock3,
} from "lucide-react";

import Navbar from "../components/layout/navbar/Navbar";
import Footer from "../components/layout/Footer";
import PageHeader from "./components/PageHeader";
import FilterBar from "./components/FilterBar";
import SummaryGrid from "./components/SummaryGrid";
import SummaryTable from "./components/SummaryTable";
import LoadingSkeleton from "./components/LoadingSkeleton";
import EmptyState from "./components/EmptyState";
import KPICard from "./components/KPICard";

import { Learner, ViewMode } from "./types/summarizer";
import {
  fetchLearners,
  generateAllSummaries,
  regenerateSummary,
} from "./lib/api";
import { courses } from "./data/courses";
import { groups } from "./data/groups";

export default function ProgressSummarizerPage() {
  const { isAuthenticated, loadSession } = useContext(AuthContext);
  const router = useRouter();
  const [learners, setLearners] = useState<Learner[]>([]);
  const [loading, setLoading] = useState(true);
  const [generating, setGenerating] = useState(false);
  const [view, setView] = useState<ViewMode>("cards");
  const [search, setSearch] = useState("");
  const [course, setCourse] = useState("all");
  const [group, setGroup] = useState("all");
  const [risk, setRisk] = useState("all");
  const [error, setError] = useState<string | null>(null);
  const [authChecked, setAuthChecked] = useState(false);

  useEffect(() => {
    if (isAuthenticated === false && authChecked) {
      router.push("/login");
    }
  }, [isAuthenticated, authChecked, router]);

  useEffect(() => {
    loadSession().then(() => {
      setAuthChecked(true);
    });
  }, [loadSession]);

  async function load() {
    if (!isAuthenticated) return;
    setLoading(true);
    setError(null);
    try {
      const data = await fetchLearners({ course, group, risk });
      setLearners(data);
    } catch (e) {
      setError(e instanceof Error ? e.message : "Failed to load learners");
    } finally {
      setLoading(false);
    }
  }

  useEffect(() => {
    void Promise.resolve().then(load);
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [course, group, risk, isAuthenticated]);

  const filtered = useMemo(() => {
    const q = search.trim().toLowerCase();
    return learners.filter(
      (l) =>
        (q === "" ||
          l.name.toLowerCase().includes(q) ||
          l.email.toLowerCase().includes(q)) &&
        (course === "all" || l.courseName === course) &&
        (group === "all" || l.groupName === group) &&
        (risk === "all" || l.risk === risk)
    );
  }, [learners, search, course, group, risk]);

  const stats = useMemo(
    () => ({
      total: learners.length,
      onTrack: learners.filter((l) => l.risk === "on-track").length,
      atRisk: learners.filter((l) => l.risk === "at-risk").length,
      overdue: learners.filter((l) => l.risk === "overdue").length,
    }),
    [learners]
  );

  async function handleGenerateAll() {
    setGenerating(true);
    try {
      const updated = await generateAllSummaries(learners);
      setLearners(updated);
    } catch (e) {
      setError(e instanceof Error ? e.message : "Failed to generate summaries");
    } finally {
      setGenerating(false);
    }
  }

  async function handleRegenerate(id: number) {
    const updated = await regenerateSummary(id, learners);
    if (updated) {
      setLearners((prev) => prev.map((l) => (l.id === id ? updated : l)));
    }
  }

  if (!authChecked) {
    return (
      <main className="min-h-screen bg-gray-50 flex items-center justify-center">
        <div className="text-center py-16">Loading...</div>
      </main>
    );
  }

  if (!isAuthenticated) {
    return null; // Will redirect via useEffect
  }

  return (
    <main className="min-h-screen bg-gray-50">
      <Navbar />

      <section className="mx-auto max-w-7xl px-6 py-10">
        <PageHeader generating={generating} onGenerate={handleGenerateAll} />

        {error && (
          <div className="mb-6 rounded-xl border border-red-200 bg-red-50 px-4 py-3 text-sm text-red-700">
            {error}
          </div>
        )}

        <div className="mb-8 grid grid-cols-2 gap-4 lg:grid-cols-4">
          <KPICard
            title="Total Learners"
            value={stats.total}
            icon={<Users size={20} />}
            color="bg-blue-100 text-blue-600"
          />
          <KPICard
            title="On Track"
            value={stats.onTrack}
            icon={<CheckCircle2 size={20} />}
            color="bg-emerald-100 text-emerald-600"
          />
          <KPICard
            title="At Risk"
            value={stats.atRisk}
            icon={<AlertTriangle size={20} />}
            color="bg-amber-100 text-amber-600"
          />
          <KPICard
            title="Overdue"
            value={stats.overdue}
            icon={<Clock3 size={20} />}
            color="bg-red-100 text-red-600"
          />
        </div>

        <FilterBar
          search={search}
          setSearch={setSearch}
          course={course}
          setCourse={setCourse}
          group={group}
          setGroup={setGroup}
          risk={risk}
          setRisk={setRisk}
          courses={courses}
          groups={groups}
          view={view}
          setView={setView}
        />

        {loading ? (
          <LoadingSkeleton />
        ) : filtered.length === 0 ? (
          <EmptyState />
        ) : view === "cards" ? (
          <SummaryGrid learners={filtered} onRegenerate={handleRegenerate} />
        ) : (
          <SummaryTable learners={filtered} onRegenerate={handleRegenerate} />
        )}
      </section>

      <Footer />
    </main>
  );
}
