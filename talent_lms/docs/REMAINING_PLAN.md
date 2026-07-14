# Remaining Plan

## Done So Far

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
- Added `scripts/seed-supabase.mjs` for demo employer and learner data.
- Kept employee/learner data in the database as normal business data.

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

### AI Summarizer
- Added Supabase-backed learner API integration under `app/ai-progress-summarizer/lib/`.
- Removed older mock/fake learner data files from the active flow.
- Added auth guarding to the summarizer page so unauthenticated users are sent to `/login`.
- Learner fetches use the stored Supabase access token.

### NudgeBot
- Temporarily disabled `/dashboard/nudge-bot`.
- Replaced the broken dashboard import path with a placeholder page.
- This avoids the build error from missing/renamed mock exports like `mockOverview`.

## Left To Do

### Database
- Run `supabase/auth-profile-migration.sql` once in the live Supabase SQL editor.
- Confirm existing `employers` rows have `email` values where needed for login.
- Decide whether old `employees` table is still needed or whether `learners` is the single employee-data table.
- Update seed script if demo data should include auth-linked employer users, not only profile rows.

### Auth
- Confirm Supabase email confirmation setting and test both flows:
  - Signup returns a session immediately.
  - Signup requires email confirmation and user signs in later.
- Add server-side route protection for dashboard/summarizer pages if needed.
- Add password reset flow for `/forgot-password`.
- Add a proper profile settings modal/page instead of `window.prompt` for Change Name.

### Employer Dashboard
- Decide final employer landing page after login.
- Current profile Dashboard link goes to `/ai-progress-summarizer`.
- NudgeBot is disabled until its types/data modules are fixed.
- Re-enable NudgeBot after fixing broken exports/types.

### AI Summarizer
- Verify employers only see learners with their own `employer_id`.
- Add loading/error empty states for missing learner assignments.
- Validate summary generation update routes with Supabase auth.
- Replace remaining mock-only assumptions with DB-backed data where needed.

### Build / Type Health
- Fix existing project-wide TypeScript errors in:
  - navbar dropdown props/types
  - NudgeBot type exports
  - empty or non-module pages
  - missing UI components such as `@/components/ui/switch`
- Run full `npm run lint`.
- Run full `npx tsc --noEmit`.
- Run `npm run build`.

### Cleanup
- Remove `dummy-creds.txt` before committing if it is not needed.
- Keep `AGENTS.md`, `CLAUDE.md`, `.claude/`, `.opencode/`, `.cursor/`, `.windsurf/`, `.clinerules/`, and `.github/copilot-instructions.md` out of commits unless the team explicitly wants them.
- Review package changes and confirm all added dependencies are intentional.

## Suggested Next Actions

1. Run `supabase/auth-profile-migration.sql` in Supabase.
2. Create or update one employer row with an email and sign up through the app.
3. Verify employer login lands on `/ai-progress-summarizer`.
4. Confirm only learners for that employer are returned.
5. Fix the remaining build/type errors unrelated to auth.
6. Re-enable NudgeBot after its data/type files are repaired.
