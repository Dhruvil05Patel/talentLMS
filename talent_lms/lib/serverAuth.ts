import { supabaseAnon } from "@/lib/supabaseClient";

export async function employerIdFromToken(token: string | null): Promise<number | null> {
  if (!token) return null;

  const { data, error } = await supabaseAnon.auth.getUser(token);
  if (error || !data.user) return null;

  const employerId = data.user.user_metadata?.employer_id;
  return typeof employerId === "number" ? employerId : null;
}
