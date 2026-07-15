# AI Progress Summarizer — Chat Summary

> Project: TalentLMS static clone (Next.js App Router) at `/Users/dhruvilpatel/Desktop/talentLMS/talent_lms`
> Goal: Replace dummy data on the AI Summarizer page with real data from Supabase (PostgreSQL), supporting Employer/Employee logins.

## What was done

### 1. Database decision
- **Chosen DB: PostgreSQL via Supabase.** Relational fit, FK constraints, built-in auth, Row-Level Security, scales.
- No Postgres/docker in repo — data lives in Supabase cloud, accessed directly.

### 2. Supabase client (`lib/supabaseClient.ts`)
- Exports `supabase` (service-role key, server-side, bypasses RLS) and `supabaseAnon` (anon key, RLS-respecting, for client auth).

### 3. Schema (`schema.sql` + `supabase/schema.sql`)
- `employers` (id, name, email, domain)
- `employees` (id, employer_id FK, name, email, role, auth_user_id UUID) — the 2nd login
- `learners` extended with `employer_id` + `employee_id` FKs, plus `group_name`, indexes, RLS policies scoping each employee to its employer's rows.

### 4. API routes (App Router)
- `app/api/learners/route.ts` — GET (filters: course/group/risk/limit/offset), POST, PUT, DELETE. Auth read but not enforced (data-first).
- `app/api/summaries/route.ts` — POST persists generated summary to a learner.
- `app/api/employers`, `app/api/employees` — **not yet created** (remaining).

### 5. Validation (`utils/validation.ts`)
- `learnerSchema` (zod) + `getLearnersSchema`. `employer_id` optional.

### 6. Frontend wiring (`app/ai-progress-summarizer/`)
- `lib/learnerTransform.ts` — maps DB snake_case row ↔ frontend camelCase `Learner`.
- `lib/api.ts` — `fetchLearners`, `generateAllSummaries`, `regenerateSummary` (calls `/api/learners`, `/api/summaries`).
- `page.tsx` — rebuilt to use real components (PageHeader, FilterBar, SummaryGrid/Table, KPICard, LoadingSkeleton, EmptyState) + live API. No dummy data.
- Orphaned dummy files deleted: `lib/fakeApi.ts`, `data/mockLearners.ts`, `data.ts`.

### 7. Seed script (`scripts/seed-supabase.mjs`)
- Populates Supabase directly (no docker). Inserts 1 employer + 60 learners (idempotent upsert).
- `@supabase/supabase-js` installed (was missing — was blocking the whole API).
- `npm run seed` added to `package.json`.

### 8. Config
- `.env` has `NEXT_PUBLIC_SUPABASE_URL`, `NEXT_PUBLIC_SUPABASE_ANON_KEY`, `SUPABASE_SERVICE_ROLE_KEY` (user-filled, gitignored).
- `.env.example` added with placeholders.

## Verification (passed)
- `npm run seed` → `Employer ready (id=1). Seeded 60 learners`.
- `GET /api/learners` returns real rows from Supabase.
- Course filter `?course_name=HIPAA Compliance` returns correct subset.
- `POST /api/summaries` persisted a summary; round-trip GET confirmed it in DB.
- Page route `/ai-progress-summarizer` returns HTTP 200.

## Known gaps
- Auth (Employer/Employee login) deferred — API currently open.
- `employees` table exists in schema but no API/routes/UI yet.
- No tests (`npm test` not set up).
