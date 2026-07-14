// scripts/seed-supabase.mjs
// Populates Supabase (employers + learners) directly. No docker, no Postgres in repo.
// Run: npm run seed
import { createClient } from "@supabase/supabase-js";
import { readFileSync } from "node:fs";

// --- minimal .env loader (Next.js does NOT load .env for plain `node`) ---
function loadEnv() {
  if (process.env.NEXT_PUBLIC_SUPABASE_URL) return; // already set (e.g. shell export)
  try {
    const raw = readFileSync(new URL("../.env", import.meta.url), "utf8");
    for (const line of raw.split("\n")) {
      const m = line.match(/^\s*([\w.-]+)\s*=\s*(.*)\s*$/);
      if (m && !process.env[m[1]]) {
        process.env[m[1]] = m[2].replace(/^["']|["']$/g, "");
      }
    }
  } catch {
    /* no .env file */
  }
}
loadEnv();

const url = process.env.NEXT_PUBLIC_SUPABASE_URL;
const key = process.env.SUPABASE_SERVICE_ROLE_KEY;

if (!url || !key) {
  console.error(
    "Missing env: set NEXT_PUBLIC_SUPABASE_URL and SUPABASE_SERVICE_ROLE_KEY (in .env)."
  );
  process.exit(1);
}

const supabase = createClient(url, key, { auth: { persistSession: false } });

const COURSES = [
  "Cyber Security Awareness",
  "HIPAA Compliance",
  "Leadership Essentials",
  "Safety Training",
  "Customer Service",
  "GDPR Fundamentals",
  "First Aid",
  "Communication Skills",
];
const GROUPS = [
  "Human Resources",
  "Engineering",
  "Finance",
  "Marketing",
  "Operations",
  "Sales",
  "Support",
  "Management",
];
const FIRST = [
  "John", "Emma", "Michael", "Sophia", "Daniel", "Olivia", "James", "Charlotte",
  "Noah", "Amelia", "Liam", "Mia", "Benjamin", "Ava", "Lucas", "Harper",
  "Henry", "Evelyn", "Alexander", "Ella", "William", "Grace", "Owen", "Chloe",
  "Jack", "Sophie", "Leo", "Isla", "Ethan", "Ruby", "Adam", "Lily",
  "Ryan", "Zoe", "Nathan", "Maya", "Isaac", "Nora", "Caleb", "Hannah",
  "Samuel", "Aria", "David", "Layla", "Joseph", "Mila", "Andrew", "Ella",
  "Joshua", "Scarlett", "Gabriel", "Penelope", "Anthony", "Stella", "Dylan", "Clara",
  "Levi", "Lucy",
];
const LAST = [
  "Smith", "Johnson", "Brown", "Williams", "Jones", "Garcia", "Miller", "Davis",
  "Wilson", "Taylor", "Anderson", "Thomas", "Moore", "Martin", "Jackson", "White",
  "Harris", "Clark", "Lewis", "Walker", "Hall", "Young", "King", "Wright",
  "Lopez", "Hill", "Scott", "Green", "Adams", "Baker", "Nelson", "Carter",
  "Mitchell", "Perez", "Roberts", "Turner", "Phillips", "Campbell", "Parker", "Evans",
  "Edwards", "Collins", "Stewart", "Sanchez", "Morris", "Rogers", "Reed", "Cook",
  "Morgan", "Bell", "Murphy", "Bailey", "Rivera", "Cooper", "Richardson", "Cox",
  "Howard", "Ward",
];

const rand = (min, max) => Math.floor(Math.random() * (max - min + 1)) + min;
function riskFor(completion, inactiveDays, quiz) {
  if (completion < 40 || inactiveDays > 14 || quiz < 45) return "overdue";
  if (completion < 70 || inactiveDays > 7 || quiz < 65) return "at-risk";
  return "on-track";
}

async function main() {
  // 1) employer (idempotent by domain)
  const { data: emp, error: empErr } = await supabase
    .from("employers")
    .upsert(
      { name: "Acme Corporation", domain: "acme.example.com" },
      { onConflict: "domain" }
    )
    .select("id")
    .single();
  if (empErr) throw empErr;
  const employerId = emp.id;
  console.log(`Employer ready (id=${employerId}).`);

  // 2) learners (idempotent by user_id)
  const rows = [];
  for (let i = 0; i < 60; i++) {
    const first = FIRST[i % FIRST.length];
    const last = LAST[i % LAST.length];
    const name = `${first} ${last}`;
    const completion = rand(10, 100);
    const quiz = rand(35, 100);
    const inactiveDays = rand(0, 20);
    rows.push({
      user_id: 1000 + i,
      name,
      email: `${first}.${last}${i}@acme.example.com`,
      avatar_url: `https://ui-avatars.com/api/?name=${encodeURIComponent(
        name
      )}&background=2563eb&color=fff`,
      course_id: (i % COURSES.length) + 1,
      course_name: COURSES[i % COURSES.length],
      group_name: GROUPS[i % GROUPS.length],
      enrolled_at: "2026-01-15T00:00:00Z",
      completion_pct: completion,
      last_active: `${inactiveDays} day(s) ago`,
      time_spent_mins: rand(60, 1600),
      quiz_avg_pct: quiz,
      deadline: "2026-08-30",
      risk_status: riskFor(completion, inactiveDays, quiz),
      employer_id: employerId,
    });
  }

  const { data, error } = await supabase
    .from("learners")
    .upsert(rows, { onConflict: "user_id" })
    .select("user_id");
  if (error) throw error;

  console.log(`Seeded ${data.length} learners into Supabase.`);
}

main().catch((e) => {
  console.error("Seed failed:", e.message || e);
  process.exit(1);
});
