import { NextRequest, NextResponse } from "next/server";
import { supabase } from "@/lib/supabaseClient";
import { learnerSchema, getLearnersSchema } from "@/utils/validation";
import { employerIdFromToken } from "@/lib/serverAuth";

function readToken(request: NextRequest): string | null {
  return request.headers.get("authorization")?.replace("Bearer ", "") ?? null;
}

export async function GET(request: NextRequest) {
  const token = readToken(request);
  if (!token) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const employer_id = await employerIdFromToken(token);
  if (!employer_id) {
    return NextResponse.json({ error: "Invalid token: missing employer_id" }, { status: 401 });
  }

  const { searchParams } = new URL(request.url);
  const filters = {
    course_name: searchParams.get("course_name") || undefined,
    group_name: searchParams.get("group_name") || undefined,
    risk_status: searchParams.get("risk_status") || undefined,
    limit: searchParams.get("limit")
      ? parseInt(searchParams.get("limit")!)
      : undefined,
    offset: searchParams.get("offset")
      ? parseInt(searchParams.get("offset")!)
      : undefined,
  };

  const parsed = getLearnersSchema.safeParse(filters);
  if (!parsed.success) {
    return NextResponse.json({ error: "Invalid query params" }, { status: 400 });
  }

  let query = supabase.from("learners").select("*");
  const { course_name, group_name, risk_status, limit, offset } = parsed.data;

  if (course_name) query = query.eq("course_name", course_name);
  if (group_name) query = query.eq("group_name", group_name);
  if (risk_status) query = query.eq("risk_status", risk_status);
  if (limit) query = query.limit(limit);
  if (offset) query = query.range(offset, offset + (limit ?? 100) - 1);
  if (employer_id) query = query.eq("employer_id", employer_id);

  const { data, error } = await query.order("user_id", { ascending: true });
  if (error) return NextResponse.json({ error: error.message }, { status: 500 });

  return NextResponse.json({ learners: data });
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

  const body = await request.json();
  const parsed = learnerSchema.safeParse(body);
  if (!parsed.success) {
    return NextResponse.json(
      { error: "Validation failed", details: parsed.error.issues },
      { status: 400 }
    );
  }

  if (parsed.data.employer_id !== undefined && parsed.data.employer_id !== employer_id) {
    return NextResponse.json({ error: "Forbidden: employer_id mismatch" }, { status: 403 });
  }

  const { data, error } = await supabase
    .from("learners")
    .insert({ ...parsed.data, employer_id })
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

  const body = await request.json();
  const { user_id, ...rest } = body;
  if (!user_id) {
    return NextResponse.json({ error: "user_id required" }, { status: 400 });
  }

  const parsed = learnerSchema.partial().safeParse(rest);
  if (!parsed.success) {
    return NextResponse.json(
      { error: "Validation failed", details: parsed.error.issues },
      { status: 400 }
    );
  }

  if (rest.employer_id !== undefined && rest.employer_id !== employer_id) {
    return NextResponse.json({ error: "Forbidden: employer_id mismatch" }, { status: 403 });
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
