import { NextRequest, NextResponse } from "next/server";
import { supabase } from "@/lib/supabaseClient";
import { requireEmployer } from "../_lib";

export async function GET(request: NextRequest) {
  const { employer, response } = await requireEmployer(request);
  if (response) return response;

  const weekStart = new Date();
  weekStart.setUTCDate(weekStart.getUTCDate() - 7);

  const [{ count: totalSent }, { count: sentThisWeek }, { count: activeRules }, { data: recentNudges }, { data: activeRulesData }] =
    await Promise.all([
      supabase.from("nudge_log").select("id", { count: "exact", head: true }).eq("employer_id", employer.id).eq("status", "sent"),
      supabase.from("nudge_log").select("id", { count: "exact", head: true }).eq("employer_id", employer.id).eq("status", "sent").gte("sent_at", weekStart.toISOString()),
      supabase.from("nudge_rules").select("id", { count: "exact", head: true }).eq("employer_id", employer.id).eq("enabled", true),
      supabase.from("nudge_log").select("*").eq("employer_id", employer.id).order("sent_at", { ascending: false }).limit(10),
      supabase.from("nudge_rules").select("*").eq("employer_id", employer.id).eq("enabled", true).order("created_at", { ascending: false }).limit(10),
    ]);

  return NextResponse.json({
    stats: {
      totalSent: totalSent ?? 0,
      sentThisWeek: sentThisWeek ?? 0,
      activeRules: activeRules ?? 0,
      reengagedLearners: 0,
    },
    activeRules: activeRulesData ?? [],
    recentNudges: recentNudges ?? [],
    upcomingRuns: [],
  });
}

