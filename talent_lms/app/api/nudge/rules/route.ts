import { NextRequest, NextResponse } from "next/server";
import { supabase } from "@/lib/supabaseClient";
import { normalizeRuleBody, requireEmployer } from "../_lib";

export async function GET(request: NextRequest) {
  const { employer, response } = await requireEmployer(request);
  if (response) return response;

  const { data, error } = await supabase
    .from("nudge_rules")
    .select("*")
    .eq("employer_id", employer.id)
    .order("created_at", { ascending: false });

  if (error) return NextResponse.json({ error: error.message }, { status: 500 });
  return NextResponse.json({ rules: data });
}

export async function POST(request: NextRequest) {
  const { employer, response } = await requireEmployer(request);
  if (response) return response;

  const body = await request.json();
  const payload = normalizeRuleBody(body);

  const { data, error } = await supabase
    .from("nudge_rules")
    .insert({ ...payload, employer_id: employer.id })
    .select("*")
    .single();

  if (error) return NextResponse.json({ error: error.message }, { status: 500 });
  return NextResponse.json({ rule: data }, { status: 201 });
}

