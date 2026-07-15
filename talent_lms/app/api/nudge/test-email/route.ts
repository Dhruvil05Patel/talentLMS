import { NextRequest, NextResponse } from "next/server";
import { supabase } from "@/lib/supabaseClient";
import { sendEmail } from "@/app/ai-progress-summarizer/lib/channels/email";
import { requireEmployer } from "../_lib";

export async function POST(request: NextRequest) {
  const { employer, response } = await requireEmployer(request);
  if (response) return response;

  const { data: employerRow, error } = await supabase
    .from("employers")
    .select("email,name")
    .eq("id", employer.id)
    .single();

  if (error || !employerRow?.email) {
    return NextResponse.json({ error: error?.message ?? "Employer email not found" }, { status: 404 });
  }

  const result = await sendEmail({
    to: employerRow.email,
    learnerName: employerRow.name ?? "Admin",
    courseName: "Nudge Bot test",
    message: "This is a test email from Nudge Bot.",
  });

  if (!result.success) return NextResponse.json({ error: result.error }, { status: 500 });
  return NextResponse.json({ success: true });
}

