import { NextRequest, NextResponse } from "next/server";
import { evaluateNudgeRun, requireRunActor } from "../_lib";

export async function POST(request: NextRequest) {
  const { employer, response } = await requireRunActor(request);
  if (response) return response;

  const body = await request.json().catch(() => ({}));
  const jobId = `job_${Date.now()}`;

  try {
    const results = await evaluateNudgeRun({
      employerId: employer.id,
      dryRun: Boolean(body.dry_run),
      ruleIds: Array.isArray(body.rule_ids) ? body.rule_ids : null,
      jobId,
    });

    return NextResponse.json({ job_id: jobId, results });
  } catch (error) {
    return NextResponse.json({ error: error instanceof Error ? error.message : "Run failed" }, { status: 500 });
  }
}

