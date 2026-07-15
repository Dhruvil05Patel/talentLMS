import { NextRequest, NextResponse } from "next/server";
import { supabase } from "@/lib/supabaseClient";

export async function GET(request: NextRequest) {
  const { searchParams } = new URL(request.url);
  const learnerId = searchParams.get("learner_id");
  const employerId = searchParams.get("employer_id");

  if (!learnerId || !employerId) {
    return NextResponse.json({ error: "learner_id and employer_id required" }, { status: 400 });
  }

  const { data, error } = await supabase
    .from("portal_notifications")
    .select("*")
    .eq("learner_id", Number(learnerId))
    .eq("employer_id", Number(employerId))
    .eq("shown", false)
    .order("created_at", { ascending: false });

  if (error) return NextResponse.json({ error: error.message }, { status: 500 });
  return NextResponse.json({ notifications: data });
}

