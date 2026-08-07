# Progress Summarizer

## Completed Work

### Folder Cleanup
- Identified `talentLMS/` as the accidental dummy app folder and `talent_lms/` as the real app.
- Compared overlapping files before removal.
- Migrated the useful CTA/login signup fixes into `talent_lms/`.
- Removed the dummy `talentLMS/` folder.

### Supabase / Database
- Added Supabase client setup in `lib/supabaseClient.ts` with anon and service-role clients.
- Added `schema.sql` and `supabase/schema.sql` for employers, employees, and learners.
- Added `supabase/auth-profile-migration.sql` for existing Supabase projects:
  - Adds `employers.email`
  - Adds `employers.auth_user_id`
  - Adds `learners.auth_user_id`
  - Adds `idx_learners_auth_user`
- Added `scripts/seed-supabase.mjs` for adding learner rows to an existing Supabase employer.
- Updated `scripts/seed-supabase.mjs` so learner seed data uses an existing real Supabase employer row instead of creating employer/auth records.
- Updated `.env.example` with `NEXT_PUBLIC_SUPABASE_ANON_KEY` and optional `SEED_EMPLOYER_ID` / `SEED_EMPLOYER_EMAIL` selectors.
- Kept employee/learner data in the database as normal business data.
- Kept `learners` as the active employee-data table for the app flow; `/api/employees` currently reads/writes learner rows scoped by employer.

### Auth Direction
- Changed auth direction to employer-only login.
- Employees/learners are not allowed to log in.
- Employer accounts are created through Supabase Auth.
- Employer profile rows are stored in the `employers` table.
- Learners remain scoped by `employer_id`, so employers can see their assigned learners.

### Auth API
- Implemented `app/api/auth/route.ts`.
- Added employer signup using Supabase Auth plus `employers` row creation.
- Added employer login using Supabase Auth.
- Added account-type guard so non-employer auth is rejected.
- Added profile name update via `PATCH /api/auth`.
- Added rollback for failed signup profile creation by deleting the newly created Supabase Auth user.

### Auth Client
- Implemented `lib/auth.ts`:
  - `signIn`
  - `signUp`
  - `signOut`
  - `getSession`
  - `isAuthenticated`
  - stored-user updates
  - persisted profile name update
- Implemented `lib/serverAuth.ts` to verify Supabase access tokens with `supabase.auth.getUser`.
- Updated `components/AuthProvider.tsx`.
- Memoized auth context functions/value to avoid repeated render/session-load loops that can slow the browser.

### Login / Signup UI
- Wired `app/login/page.tsx` to real employer sign-in.
- Removed employee sign-in option.
- Wired `app/login/signup/page.tsx` to real employer signup.
- Removed employee signup option.
- Signup now handles both immediate Supabase sessions and email-confirmation-required flows.

### Navbar / Session UI
- Updated `app/components/layout/navbar/CTAButtons.tsx`.
- When signed out, navbar shows Login, Request a demo, and Sign up.
- When signed in, navbar shows a default profile circle instead of signup CTAs.
- Profile menu includes:
  - Dashboard
  - Change Name
  - Logout
- Replaced the temporary `window.prompt` Change Name flow with a profile settings modal.

### AI Summarizer
- Added Supabase-backed learner API integration under `app/ai-progress-summarizer/lib/`.
- Removed older mock/fake learner data files from the active flow.
- Added auth guarding to the summarizer page so unauthenticated users are sent to `/login`.
- Learner fetches use the stored Supabase access token.
- Hardened learner API routes so `GET`, `POST`, `PUT`, and `DELETE` require a valid Supabase access token.
- Enforced `employer_id` ownership on learner reads, writes, updates, and deletes.
- Hardened summary generation updates so `/api/summaries` requires Supabase auth and only updates learners owned by the signed-in employer.
- Updated learner row transformation typing to remove `any` and keep TypeScript strict mode passing.
- Improved the empty-state copy for cases where an employer has no assigned learners.

### NudgeBot
- Fixed NudgeBot type exports and mock data compatibility.
- Added missing `@/components/ui/switch`.
- Fixed broken NudgeBot import paths.
- Re-enabled `/dashboard/nudge-bot`.

### Password Reset
- Added `/forgot-password`.
- Added `reset-password` handling to `app/api/auth/route.ts`.
- Added client helper `requestPasswordReset` in `lib/auth.ts`.

### Route Protection
- Added `proxy.ts` to protect `/ai-progress-summarizer` and `/dashboard`.
- Added auth-token cookie persistence so protected routes can be checked before page render.

### Employer / Employee APIs
- Tightened `/api/employees` so updates and deletes are scoped to the signed-in employer.
- Tightened `/api/employers` so employers only fetch or update their own profile.

### Build / Type Health Completed
- Fixed empty or non-module App Router pages by adding minimal default exports.
- Fixed navbar dropdown prop/type errors.
- Fixed NudgeBot type/export errors.
- Fixed missing `@/components/ui/switch`.
- Removed build-time Google Font dependency and used local CSS font variables.
- Verified:
  - `npx tsc --noEmit` passes.
  - `npm run lint` passes with warnings only.
  - `npm run build` passes.
- Confirmed the user also ran `npm run build` successfully locally.

### Cleanup Completed
- Removed `dummy-creds.txt`.
- Created `docs/execution plan.md`.
- Searched the repo for obvious committed Supabase keys or dummy credential references; no committed real keys were found.

## Current Status

- Local implementation work is complete.
- Production build passes.
- TypeScript check passes.
- Lint passes with warnings only.
- The seed script now uses a real existing Supabase employer row instead of creating demo employer/auth records.
- Supabase SQL migration must be run by pasting the contents of `supabase/auth-profile-migration.sql` into the Supabase SQL Editor, not by typing the file path.

## Live Supabase Verification

These steps require access to the live Supabase project:

- Run the contents of `supabase/auth-profile-migration.sql` once in the Supabase SQL Editor.
- Confirm existing `employers` rows have `email` values where login is needed.
- Confirm employer auth users are linked through `employers.auth_user_id`.
- Confirm Supabase email confirmation settings and test both flows:
  - Signup returns a session immediately.
  - Signup requires email confirmation and user signs in later.
- Verify against live Supabase data that employers only see learners with their own `employer_id`.
- Test `/forgot-password` with the live Supabase email settings.

## Seed Script Usage

- Running the seed script is optional.
- Use it only if the real Supabase employer already exists and needs generated learner rows.
- Select the real employer with `SEED_EMPLOYER_ID` or `SEED_EMPLOYER_EMAIL`.
- If neither variable is set, the script uses the first real row in `employers`.
- The script fails if the selected employer has no `domain` or `email`.

Example:

```bash
SEED_EMPLOYER_EMAIL=real-employer@email.com npm run seed
```

or:

```bash
SEED_EMPLOYER_ID=1 npm run seed
```

## Local Verification

- `npx tsc --noEmit` passes.
- `npm run lint` passes with warnings only.
- `npm run build` passes.

## Commit Notes

- Keep `AGENTS.md`, `CLAUDE.md`, `.claude/`, `.opencode/`, `.cursor/`, `.windsurf/`, `.clinerules/`, and `.github/copilot-instructions.md` out of commits unless the team explicitly wants them.
- Review package changes and confirm all added dependencies are intentional.
- Confirm Supabase keys are only in `.env` and not committed.
