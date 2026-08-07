import { NextRequest, NextResponse } from "next/server";
import { evaluateNudgeRun, requireEmployer } from "../_lib";

export async function POST(request: NextRequest) {
  const { employer, response } = await requireEmployer(request);
  if (response) return response;

  const body = await request.json().catch(() => ({}));
  const jobId = `dry_${Date.now()}`;

  try {
    const results = await evaluateNudgeRun({
      employerId: employer.id,
      dryRun: true,
      ruleIds: Array.isArray(body.rule_ids) ? body.rule_ids : null,
      jobId,
    });

    return NextResponse.json({ job_id: jobId, results });
  } catch (error) {
    return NextResponse.json({ error: error instanceof Error ? error.message : "Dry run failed" }, { status: 500 });
  }
}

