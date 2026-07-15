import { NextRequest, NextResponse } from "next/server";
import { supabase } from "@/lib/supabaseClient";
import { requireEmployer } from "../../_lib";

type Params = { params: Promise<{ jobId: string }> };

export async function GET(request: NextRequest, { params }: Params) {
  const { employer, response } = await requireEmployer(request);
  if (response) return response;

  const { jobId } = await params;
  const { data, error } = await supabase
    .from("nudge_log")
    .select("id,status,failure_reason,sent_at")
    .eq("employer_id", employer.id)
    .eq("job_id", jobId)
    .order("sent_at", { ascending: false });

  if (error) return NextResponse.json({ error: error.message }, { status: 500 });
  return NextResponse.json({ job_id: jobId, items: data, status: "completed" });
}

