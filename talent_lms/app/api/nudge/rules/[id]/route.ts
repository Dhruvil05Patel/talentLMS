import { NextRequest, NextResponse } from "next/server";
import { supabase } from "@/lib/supabaseClient";
import { normalizeRuleBody, requireEmployer } from "../../_lib";

type Params = { params: Promise<{ id: string }> };

export async function PATCH(request: NextRequest, { params }: Params) {
  const { employer, response } = await requireEmployer(request);
  if (response) return response;

  const { id } = await params;
  const body = await request.json();

  const { data, error } = await supabase
    .from("nudge_rules")
    .update({ ...normalizeRuleBody(body), updated_at: new Date().toISOString() })
    .eq("id", id)
    .eq("employer_id", employer.id)
    .select("*")
    .single();

  if (error) return NextResponse.json({ error: error.message }, { status: 500 });
  return NextResponse.json({ rule: data });
}

export async function DELETE(request: NextRequest, { params }: Params) {
  const { employer, response } = await requireEmployer(request);
  if (response) return response;

  const { id } = await params;
  const { error } = await supabase.from("nudge_rules").delete().eq("id", id).eq("employer_id", employer.id);

  if (error) return NextResponse.json({ error: error.message }, { status: 500 });
  return NextResponse.json({ success: true });
}

