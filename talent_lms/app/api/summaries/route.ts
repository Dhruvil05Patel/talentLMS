import { NextRequest, NextResponse } from "next/server";
import { supabase } from "@/lib/supabaseClient";
import { employerIdFromToken } from "@/lib/serverAuth";

function readToken(request: NextRequest): string | null {
  return request.headers.get("authorization")?.replace("Bearer ", "") ?? null;
}

export async function POST(request: NextRequest) {
  const token = readToken(request);
  if (!token) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const employer_id = await employerIdFromToken(token);
  if (!employer_id) {
    return NextResponse.json({ error: "Invalid token: missing employer_id" }, { status: 401 });
  }

  const { user_id, summary, summary_generated_at } = await request.json();
  if (!user_id) {
    return NextResponse.json({ error: "user_id required" }, { status: 400 });
  }

  const { data, error } = await supabase
    .from("learners")
    .update({ summary, summary_generated_at })
    .eq("user_id", user_id)
    .eq("employer_id", employer_id)
    .select("*")
    .single();

  if (error) return NextResponse.json({ error: error.message }, { status: 500 });
  return NextResponse.json({ learner: data });
}
