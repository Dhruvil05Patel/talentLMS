// lib/supabaseClient.ts
import { createClient } from '@supabase/supabase-js';

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL!;
const supabaseServiceKey = process.env.SUPABASE_SERVICE_ROLE_KEY!;
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!;

// Service-role client: full read/write, bypasses RLS. Server-side only.
export const supabase = createClient(supabaseUrl, supabaseServiceKey);

// Anon client: respects RLS. Use for end-user auth (signup/login).
export const supabaseAnon = createClient(supabaseUrl, supabaseAnonKey);
