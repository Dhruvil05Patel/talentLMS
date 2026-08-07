import { NextRequest, NextResponse } from "next/server";
import { supabase } from "@/lib/supabaseClient";
import { employerSchema } from "@/utils/validation";
import { logRequest } from "@/utils/logger";
import { employerIdFromToken } from "@/lib/serverAuth";

function readToken(request: NextRequest): string | null {
  return request.headers.get("authorization")?.replace("Bearer ", "") ?? null;
}

export async function GET(request: NextRequest) {
  const timer = logRequest("GET", "/api/employers");
  const token = readToken(request);
  const employerId = await employerIdFromToken(token);
  if (!employerId) {
    timer.end();
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const { data, error } = await supabase
    .from("employers")
    .select("*")
    .eq("id", employerId)
    .single();
  timer.end();
  if (error) return NextResponse.json({ error: error.message }, { status: 500 });
  return NextResponse.json({ employer: data });
}

export async function POST(request: NextRequest) {
  const timer = logRequest("POST", "/api/employers");
  const token = readToken(request);
  const employerId = await employerIdFromToken(token);
  if (!employerId) {
    timer.end();
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const body = await request.json();
  const parsed = employerSchema.safeParse(body);
  if (!parsed.success) {
    timer.end();
    return NextResponse.json(
      { error: "Validation failed", details: parsed.error.issues },
      { status: 400 }
    );
  }

  const { data, error } = await supabase
    .from("employers")
    .update(parsed.data)
    .eq("id", employerId)
    .select("*")
    .single();

  timer.end();
  if (error) return NextResponse.json({ error: error.message }, { status: 500 });
  return NextResponse.json({ employer: data });
}
