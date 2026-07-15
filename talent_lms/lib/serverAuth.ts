import { supabase, supabaseAnon } from "@/lib/supabaseClient";
import type { NextRequest } from "next/server";

export async function employerIdFromToken(token: string | null): Promise<number | null> {
  if (!token) return null;

  const { data, error } = await supabaseAnon.auth.getUser(token);
  if (error || !data.user) return null;

  const employerId = data.user.user_metadata?.employer_id;
  if (typeof employerId === "number") return employerId;

  const { data: employer } = await supabase
    .from("employers")
    .select("id")
    .or(`auth_user_id.eq.${data.user.id},email.eq.${data.user.email}`)
    .maybeSingle();

  return employer?.id ?? null;
}

export interface VerifiedEmployer {
  id: number;
}

export function readBearerToken(request: NextRequest): string | null {
  return request.headers.get("authorization")?.replace("Bearer ", "") ?? null;
}

export async function verifyEmployer(request: NextRequest): Promise<VerifiedEmployer | null> {
  const id = await employerIdFromToken(readBearerToken(request));
  return id ? { id } : null;
}

export async function verifyCronOrEmployer(request: NextRequest): Promise<VerifiedEmployer | null> {
  const cronSecret = process.env.CRON_SECRET;
  const providedSecret = request.headers.get("x-cron-secret");

  if (cronSecret && providedSecret === cronSecret) {
    const employerHeader = request.headers.get("x-employer-id");
    const id = employerHeader ? Number(employerHeader) : NaN;
    return Number.isFinite(id) ? { id } : null;
  }

  return verifyEmployer(request);
}
