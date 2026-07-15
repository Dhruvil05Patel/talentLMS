import { NextRequest, NextResponse } from "next/server";
import { supabase } from "@/lib/supabaseClient";
import { employeeSchema, getEmployeesSchema } from "@/utils/validation";
import { employerIdFromToken } from "@/lib/serverAuth";

function readToken(request: NextRequest): string | null {
  return request.headers.get("authorization")?.replace("Bearer ", "") ?? null;
}

export async function GET(request: NextRequest) {
  const token = readToken(request);
  if (!token) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const tokenEmployerId = await employerIdFromToken(token);
  if (!tokenEmployerId) {
    return NextResponse.json({ error: "Invalid token: missing employer_id" }, { status: 401 });
  }

  const { searchParams } = new URL(request.url);
  const employer_id = searchParams.get("employer_id");
  if (!employer_id) {
    return NextResponse.json({ error: "employer_id required" }, { status: 400 });
  }

  const parsed = getEmployeesSchema.safeParse({ employer_id: Number(employer_id) });
  if (!parsed.success) {
    return NextResponse.json({ error: "Invalid query params" }, { status: 400 });
  }

  // Only allow access to own employer's data
  if (Number(employer_id) !== tokenEmployerId) {
    return NextResponse.json({ error: "Forbidden: employer_id mismatch" }, { status: 403 });
  }

  const { data, error } = await supabase.from("learners").select("*").eq("employer_id", employer_id);
  if (error) return NextResponse.json({ error: error.message }, { status: 500 });
  return NextResponse.json({ learners: data });
}

export async function POST(request: NextRequest) {
  const token = readToken(request);
  if (!token) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const tokenEmployerId = await employerIdFromToken(token);
  if (!tokenEmployerId) {
    return NextResponse.json({ error: "Invalid token: missing employer_id" }, { status: 401 });
  }

  const body = await request.json();
  const parsed = employeeSchema.safeParse(body);
  if (!parsed.success) {
    return NextResponse.json(
      { error: "Validation failed", details: parsed.error.issues },
      { status: 400 }
    );
  }

  const { name, email, employer_id } = parsed.data;

  // Only allow creating learners for own employer
  if (employer_id !== tokenEmployerId) {
    return NextResponse.json({ error: "Forbidden: employer_id mismatch" }, { status: 403 });
  }

  const { data, error } = await supabase
    .from("learners")
    .insert({ name, email, employer_id })
    .select("*")
    .single();

  if (error) return NextResponse.json({ error: error.message }, { status: 500 });
  return NextResponse.json({ learner: data }, { status: 201 });
}

export async function PUT(request: NextRequest) {
  const token = readToken(request);
  if (!token) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const employer_id = await employerIdFromToken(token);
  if (!employer_id) {
    return NextResponse.json({ error: "Invalid token: missing employer_id" }, { status: 401 });
  }

  const url = new URL(request.url);
  const user_id = url.searchParams.get("user_id");
  if (!user_id) {
    return NextResponse.json({ error: "learner_id required" }, { status: 400 });
  }

  const body = await request.json();
  const { user_id: ignoredUserId, ...rest } = body;
  void ignoredUserId;

  const parsed = employeeSchema.partial().safeParse(rest);
  if (!parsed.success) {
    return NextResponse.json(
      { error: "Validation failed", details: parsed.error.issues },
      { status: 400 }
    );
  }

  const { data, error } = await supabase
    .from("learners")
    .update(parsed.data)
    .eq("user_id", parseInt(user_id))
    .eq("employer_id", employer_id)
    .select("*")
    .single();

  if (error) return NextResponse.json({ error: error.message }, { status: 500 });
  return NextResponse.json({ learner: data });
}

export async function DELETE(request: NextRequest) {
  const token = readToken(request);
  if (!token) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const employer_id = await employerIdFromToken(token);
  if (!employer_id) {
    return NextResponse.json({ error: "Invalid token: missing employer_id" }, { status: 401 });
  }

  const url = new URL(request.url);
  const learner_id = url.searchParams.get("user_id");
  if (!learner_id) {
    return NextResponse.json({ error: "user_id required" }, { status: 400 });
  }

  const { error } = await supabase
    .from("learners")
    .delete()
    .eq("user_id", parseInt(learner_id))
    .eq("employer_id", employer_id);

  if (error) return NextResponse.json({ error: error.message }, { status: 500 });
  return NextResponse.json({ success: true });
}
