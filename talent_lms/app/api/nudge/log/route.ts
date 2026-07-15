import { NextRequest, NextResponse } from "next/server";
import { supabase } from "@/lib/supabaseClient";
import { requireEmployer } from "../_lib";

export async function GET(request: NextRequest) {
  const { employer, response } = await requireEmployer(request);
  if (response) return response;

  const { searchParams } = new URL(request.url);
  const page = Math.max(1, Number(searchParams.get("page") ?? 1));
  const pageSize = Math.min(100, Math.max(1, Number(searchParams.get("pageSize") ?? 25)));
  const from = (page - 1) * pageSize;
  const to = from + pageSize - 1;

  let query = supabase
    .from("nudge_log")
    .select("*", { count: "exact" })
    .eq("employer_id", employer.id);

  const channel = searchParams.get("channel");
  const status = searchParams.get("status");
  const search = searchParams.get("search");

  if (channel) query = query.eq("channel", channel);
  if (status) query = query.eq("status", status);
  if (search) query = query.ilike("learner_name", `%${search}%`);

  const { data, count, error } = await query.order("sent_at", { ascending: false }).range(from, to);

  if (error) return NextResponse.json({ error: error.message }, { status: 500 });
  return NextResponse.json({ items: data, page, pageSize, total: count ?? 0 });
}

