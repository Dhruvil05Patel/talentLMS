# Remaining Plan — Nudge Bot

## What’s already implemented (from code + existing docs)

### Backend (API)
- ✅ `/api/nudge/rules` (GET, POST)
- ✅ `/api/nudge/rules/[id]` (PATCH, DELETE)
- ✅ `/api/nudge/run` (POST) — supports `{ dry_run, rule_ids }`
- ✅ `/api/nudge/dry-run` (POST)
- ✅ `/api/nudge/log` (GET, paginated + filters: channel/status/search)
- ✅ `/api/nudge/preview-message` (POST) — generates message preview (AI or template)
- ✅ `/api/nudge/portal-notification` (GET) + `/api/nudge/portal-notification/[id]/mark-shown` (POST)
- ✅ `/api/nudge/overview` (GET) — stats + recent nudges + active rules
- ✅ `/api/nudge/test-email` (POST) — Resend MVP email test

### Core orchestration
- ✅ `app/api/nudge/_lib.ts`
  - fetches `nudge_rules` + `learners` scoped by `employer_id`
  - evaluates triggers, cooldown, and weekly cap
  - generates messages via `generateNudgeMessage` (Claude) or templates
  - delivers via channel adapter (currently includes `in-portal` insert + `sendNudge` for other channels)
  - logs each outcome into `nudge_log`

### Rule evaluation + message generation
- ✅ Nudge run logic is wired to:
  - `app/ai-progress-summarizer/lib/nudgeEngine.ts` (trigger + cooldown + weekly cap helpers)
  - `app/ai-progress-summarizer/lib/nudgeGenerator.ts` (Claude-based nudge text)

### Supabase schema + RLS
- ✅ `talent_lms/supabase/nudge-schema.sql`
  - `nudge_rules`
  - `nudge_log`
  - `portal_notifications`
  - RLS policies for all three tables

### Frontend (dashboard UI)
- ✅ `/dashboard/nudge-bot` route exists and renders a 4-tab UI:
  - Overview tab
  - Rules tab
  - History tab
  - Settings tab
- ✅ Drawer UI exists for rule preview and “Regenerate preview”
- ✅ Dry run panel exists and calls `/api/nudge/dry-run` on confirm

## What still remains

### A) Fix/finish Supabase integration on the frontend

**What we have now (verified from code):**
- The dashboard route + tabs exist and render.
- The client calls real backend endpoints for:
  - fetching rules (`/api/nudge/rules`) and history (`/api/nudge/log`)
  - running nudges (`/api/nudge/run`) and dry-run (`/api/nudge/dry-run`)
  - generating previews (`/api/nudge/preview-message`)
  - sending test email (`/api/nudge/test-email`) (API route exists)

**What is still incomplete / risky:**
- `NudgeBotDashboardClient.tsx` still keeps mock data as initial state and fallback behavior.
- `RuleDrawer.tsx` is currently mostly *display-only* (no editable inputs wired to save/update endpoints).
- `RulesTab.tsx` lists rules but does not provide enable/disable or CRUD actions.
- `SettingsTab` appears to be using `mockSettings` instead of persisted configuration.

Remaining tasks:
- [x] Remove/limit mock fallback behavior so UI reflects true backend state.
- [ ] Implement full CRUD + enable/disable in the UI:

  - create rule (`POST /api/nudge/rules`)
  - edit rule fields (`PATCH /api/nudge/rules/[id]`)
  - enable/disable (`PATCH` updating `enabled`)
  - delete rule (`DELETE /api/nudge/rules/[id]`)
- [ ] Make `RuleDrawer` editable and wire Save/Delete to the real API.
- [ ] Wire `SettingsTab` to real persisted settings (or clearly remove settings persistence if not implemented) and ensure "Send Test Email" hits `/api/nudge/test-email`.


### B) Ensure “Run Now” and dry-run delivery logic are fully correct
- [ ] Verify `sendNudge` channel adapter behavior matches the intended channel set.
  - If Slack/WhatsApp are unsupported, ensure those channels degrade gracefully (or are hidden/disabled in UI).
- [ ] Confirm message generation inputs are correct (first name extraction, completion percentage field mapping, deadline label logic).
- [ ] Confirm portal channel behavior:
  - `portal_notifications` inserts are correct
  - client side widget marks notifications shown correctly.

### C) Scheduler wiring
- [ ] Confirm `talent_lms/supabase/nudge-cron.sql` is applied and points to the correct deployed URL.
- [ ] Confirm cron secret verification is implemented end-to-end (route + cron config).
- [ ] Validate cron triggers:
  - correct timing
  - respects enabled rules
  - doesn’t send duplicate nudges within cooldown.

### D) Data correctness checks / guardrails
- [ ] Add/verify “max nudges per learner per week” matches business requirement.
  - Backend currently uses `WEEKLY_CAP = 3` and a simple ISO week start.
- [ ] Add/verify risk status mapping consistency:
  - backend logs `risk_status_at_send` using `learner.risk_status ?? learner.risk ?? 'no-data'`.
- [ ] Consider pagination performance on the run evaluator:
  - backend currently fetches all learners in a single query; add batching if needed.

### E) UI polish
- [ ] Improve History actions:
  - “Retry” behavior should map to a backend re-queue mechanism (currently the backend logs outcomes but may not have a dedicated retry endpoint).
- [ ] Add “Run Now” dropdown options to match design:
  - Run all active rules
  - Preview Only (dry run)
- [ ] Ensure empty states match design spec.

### F) Documentation updates
- [ ] Update `talent_lms/docs/execution plan.md` to reflect which phases are completed vs remaining.
- [ ] Update `talent_lms/docs/NUDGE-BOT-PLAN.md` to mark completed checklist items (optional but recommended).

## Quick status by original plan phase
- N1 (Schema): ✅ done (table + RLS present)
- N2 (Rule engine): ✅ wired (passesTrigger + cooldown + weekly cap in use)
- N3 (Claude generator): ✅ wired
- N4 (Email MVP): ✅ wired via `/api/nudge/test-email` + `sendEmail`
- N5 (API routes): ✅ most routes present
- N6/N7 (Frontend tabs): ⚠ partial (UI exists; editing/persistence and some settings/history actions likely incomplete)
- N8 (Scheduler): ⏳ verify cron deployment + secret verification
- N9 (Slack adapter): ⏳ confirm adapter exists; if not, keep optional/disabled


