# Execution Plan

## 1. Supabase Live Setup

- Run `supabase/auth-profile-migration.sql` in the live Supabase SQL editor.
- Confirm existing `employers` rows have valid `email` values where login is needed.
- Confirm employer auth users are linked through `employers.auth_user_id`.
- Decide whether the old `employees` table is still needed or whether `learners` is the single employee-data table.
- Keep `scripts/seed-supabase.mjs` pointed at existing real Supabase employer rows, selected by `SEED_EMPLOYER_ID` or `SEED_EMPLOYER_EMAIL`.

## 2. Auth Completion

- Confirm Supabase email confirmation settings.
- Test signup when Supabase returns a session immediately.
- Test signup when email confirmation is required and the user signs in later.
- Add password reset support for `/forgot-password`.
- Replace the current `window.prompt` Change Name flow with a proper profile settings modal or page.
- Add server-side route protection for dashboard and AI summarizer routes where needed.

## 3. AI Summarizer Hardening

- Verify employers only see learners with their own `employer_id`.
- Enforce employer scoping consistently in `app/api/learners/route.ts`.
- Validate summary generation and update routes with Supabase auth.
- Ensure `/api/summaries` checks employer ownership before updating learner summaries.
- Add loading, error, and empty states for missing learner assignments.
- Replace any remaining mock-only assumptions with database-backed behavior.

## 4. Employer Dashboard

- Decide the final employer landing page after login.
- Keep `/ai-progress-summarizer` as the temporary dashboard target or create a proper `/dashboard`.
- Apply `supabase/nudge-schema.sql` before using real Nudge Bot data.
- Verify Nudge Bot API endpoints and RLS behavior for `nudge_rules`, `nudge_log`, and `portal_notifications`.
- Optionally apply `supabase/nudge-cron.sql` after replacing URL, secret, and employer header values.
- Keep `/dashboard/nudge-bot` enabled after it builds cleanly.


## 5. Build And Type Health

- Fix navbar dropdown prop/type errors.
- Fix NudgeBot type exports.
- Fix empty or non-module pages.
- Add or replace missing UI components such as `@/components/ui/switch`.
- Run `npm run lint`.
- Run `npx tsc --noEmit`.
- Run `npm run build`.

## 6. Cleanup Before Commit

- Remove `dummy-creds.txt` if it is not needed.
- Keep `AGENTS.md`, `CLAUDE.md`, `.claude/`, `.opencode/`, `.cursor/`, `.windsurf/`, `.clinerules/`, and `.github/copilot-instructions.md` out of commits unless the team explicitly wants them.
- Review package changes and confirm all added dependencies are intentional.
- Confirm Supabase keys are only in `.env` and not committed.
- Commit only the app, schema, script, and documentation changes needed for the feature.

## Execution Order

1. Run and verify the database migration.
2. Complete auth testing and route protection.
3. Enforce learner and summary employer scoping.
4. Finish AI summarizer loading, error, and empty states.
5. Decide and wire the employer dashboard target.
6. Repair and re-enable NudgeBot.
7. Fix project-wide lint, type, and build errors.
8. Clean up local-only files and review commit contents.
