# Commit Plan

## 1. chore: ignore local agent files

Add:
- `.gitignore`
- `talent_lms/.gitignore`

Notes:
- Keeps local agent/editor configuration and scratch credentials out of future commits.
- If `talent_lms/AGENTS.md` is already tracked, `.gitignore` will not untrack it automatically.
- Ignores `.github/copilot-instructions.md` specifically, without hiding future GitHub Actions workflows.

## 2. docs: add remaining plan + commit contents

Add:
- `talent_lms/docs/progress-summarizer.md`
- `talent_lms/docs/COMMIT_PLAN.md`
- `talent_lms/docs/REMAINING_PLAN.md`

Notes:
- Captures what’s done vs what remains (auth/database → AI summarizer → Nudge Bot).
- Keeps the commit message + file list aligned with the documented execution order.


## 3. feat: add Supabase employer auth

Add:
- `talent_lms/app/api/auth/route.ts`
- `talent_lms/lib/auth.ts`
- `talent_lms/lib/serverAuth.ts`
- `talent_lms/components/AuthProvider.tsx`
- `talent_lms/app/layout.tsx`

Notes:
- Employer-only signup/login.
- Supabase Auth handles credentials.
- Employer profile data is stored in `employers`.

## 4. feat: wire login and signup pages

Add:
- `talent_lms/app/login/page.tsx`
- `talent_lms/app/login/signup/page.tsx`
- `talent_lms/app/components/layout/navbar/CTAButtons.tsx`

Notes:
- Login/signup now call the auth API.
- Navbar shows profile menu after login.
- Profile menu includes Dashboard, Change Name, and Logout.

## 5. feat: add Supabase learner data flow

Add:
- `talent_lms/app/api/learners/route.ts`
- `talent_lms/app/api/employees/route.ts`
- `talent_lms/app/api/employers/route.ts`
- `talent_lms/app/api/summaries/route.ts`
- `talent_lms/app/ai-progress-summarizer/lib/api.ts`
- `talent_lms/app/ai-progress-summarizer/lib/learnerTransform.ts`
- `talent_lms/app/ai-progress-summarizer/page.tsx`
- `talent_lms/utils/validation.ts`
- `talent_lms/utils/auth.ts`
- `talent_lms/utils/logger.ts`

Notes:
- Employers fetch learner data scoped by `employer_id`.
- Removes active dependency on old mock learner APIs.

## 6. db: add Supabase schema and seed scripts

Add:
- `talent_lms/schema.sql`
- `talent_lms/supabase/schema.sql`
- `talent_lms/supabase/auth-profile-migration.sql`
- `talent_lms/scripts/seed-supabase.mjs`
- `talent_lms/lib/supabaseClient.ts`
- `talent_lms/package.json`
- `talent_lms/package-lock.json`

Notes:
- Migration is for existing Supabase projects.
- Seed script adds learner rows to an existing Supabase employer selected by `SEED_EMPLOYER_ID` or `SEED_EMPLOYER_EMAIL`.

## 7. feat: restore NudgeBot dashboard

Add:
- `talent_lms/app/dashboard/nudge-bot/page.tsx`

Notes:
- Restores the NudgeBot dashboard after fixing mock/type exports.
- Keeps `/dashboard/nudge-bot` building cleanly.
