# Nudge Bot — Implementation Plan

**Route:** `/dashboard/nudge-bot`  
**Stack:** Next.js 14 App Router · Supabase (Auth + DB) · Claude API · Resend (email MVP)  
**Prerequisite:** Progress Summarizer must be live with real learner + summary data in Supabase  
**Status:** 🚧 Stub exists — real implementation starts here

---

## What Already Exists

From the Progress Summarizer work:

```
✅  /dashboard/nudge-bot  route exists (stub with mock data)
✅  NudgeBot type exports fixed
✅  @/components/ui/switch exists
✅  Supabase client (lib/supabaseClient.ts)
✅  Supabase Auth — employer session, serverAuth.ts
✅  employers table — scoped by employer_id
✅  learners table — scoped by employer_id, has risk data + summaries
✅  Route protection via proxy.ts
```

What does NOT exist yet:

```
✗  nudge_rules table
✗  nudge_log table
✗  portal_notifications table
✗  /api/nudge/* routes (any of them)
✗  Claude nudge message generation
✗  Email delivery (Resend)
✗  Slack / WhatsApp adapters
✗  Rule engine (evaluate who qualifies)
✗  Scheduler (cron or n8n webhook)
✗  All four frontend tabs (currently a stub)
```

---

## Phase Breakdown

| Phase | Deliverable | Effort |
|-------|------------|--------|
| **N1** | Supabase schema — 3 new tables | 0.5d |
| **N2** | Rule engine — evaluate who qualifies | 1d |
| **N3** | Claude nudge message generator | 0.5d |
| **N4** | Email adapter (Resend) | 0.5d |
| **N5** | Next.js API routes — all nudge endpoints | 1d |
| **N6** | Frontend — Rules tab (create/edit rules) | 1.5d |
| **N7** | Frontend — Overview + History + Settings tabs | 1.5d |
| **N8** | Scheduler (Supabase pg_cron or n8n webhook) | 0.5d |
| **N9** | Slack adapter (optional, after email MVP works) | 0.5d |
| **N10** | Polish — dry run panel, cooldown, weekly cap | 0.5d |
| **Total** | | **~8d** |

Build in order: N1 → N2 → N3 → N4 → N5 → N6 → N7 → N8. Slack (N9) is optional.

---

## Phase N1 — Supabase Schema

Run in the Supabase SQL Editor (same pattern as `supabase/auth-profile-migration.sql`).

Create file: `supabase/nudge-schema.sql`

```sql
-- ── nudge_rules ────────────────────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS nudge_rules (
  id                        UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  employer_id               INT NOT NULL REFERENCES employers(id) ON DELETE CASCADE,
  name                      TEXT NOT NULL,
  enabled                   BOOLEAN NOT NULL DEFAULT TRUE,

  -- trigger conditions (all optional except risk_statuses)
  trigger_risk_statuses     TEXT[]  NOT NULL DEFAULT ARRAY['at-risk','overdue'],
  trigger_min_days_inactive INT,
  trigger_completion_below  INT,
  trigger_deadline_within   INT,
  trigger_course_id         INT,     -- null = all courses

  -- schedule
  schedule                  TEXT NOT NULL DEFAULT 'manual', -- 'manual'|'daily'|'weekly'
  schedule_time             TEXT DEFAULT '09:00',           -- HH:MM
  schedule_days             TEXT[],                         -- ['Monday'] for weekly

  -- delivery
  channel                   TEXT NOT NULL DEFAULT 'email',  -- 'email'|'slack'|'whatsapp'|'in-portal'
  cooldown_hours            INT NOT NULL DEFAULT 72,

  -- message
  message_mode              TEXT NOT NULL DEFAULT 'ai-generated', -- 'ai-generated'|'template'
  message_tone              TEXT NOT NULL DEFAULT 'encouraging',  -- 'encouraging'|'urgent'|'neutral'
  message_template          TEXT,

  created_at                TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at                TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX idx_nudge_rules_employer ON nudge_rules(employer_id);

-- ── nudge_log ──────────────────────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS nudge_log (
  id                    BIGSERIAL PRIMARY KEY,
  employer_id           INT NOT NULL REFERENCES employers(id) ON DELETE CASCADE,
  rule_id               UUID REFERENCES nudge_rules(id) ON DELETE SET NULL,
  learner_id            INT NOT NULL REFERENCES learners(id) ON DELETE CASCADE,
  learner_name          TEXT NOT NULL,
  learner_email         TEXT NOT NULL,
  course_name           TEXT NOT NULL,
  risk_status_at_send   TEXT NOT NULL,
  channel               TEXT NOT NULL,
  message               TEXT NOT NULL,
  status                TEXT NOT NULL DEFAULT 'pending',  -- 'pending'|'sent'|'failed'|'skipped'
  failure_reason        TEXT,
  job_id                TEXT,
  sent_at               TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  opened_at             TIMESTAMPTZ                       -- email open tracking only
);

CREATE INDEX idx_nudge_log_employer   ON nudge_log(employer_id);
CREATE INDEX idx_nudge_log_learner    ON nudge_log(learner_id);
CREATE INDEX idx_nudge_log_sent_at    ON nudge_log(sent_at DESC);

-- ── portal_notifications ───────────────────────────────────────────────────
-- Used only by the in-portal TalentLMS JS widget channel.
CREATE TABLE IF NOT EXISTS portal_notifications (
  id          BIGSERIAL PRIMARY KEY,
  employer_id INT NOT NULL REFERENCES employers(id) ON DELETE CASCADE,
  learner_id  INT NOT NULL REFERENCES learners(id) ON DELETE CASCADE,
  message     TEXT NOT NULL,
  shown       BOOLEAN NOT NULL DEFAULT FALSE,
  created_at  TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  shown_at    TIMESTAMPTZ
);

CREATE INDEX idx_portal_notif_learner ON portal_notifications(learner_id, shown);
```

Add to `supabase/nudge-schema.sql` and document it in `docs/execution plan.md`.

**RLS policies** (copy the pattern from employers/learners):

```sql
ALTER TABLE nudge_rules ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Employers see own rules"
  ON nudge_rules FOR ALL
  USING (employer_id = (
    SELECT id FROM employers WHERE auth_user_id = auth.uid()
  ));

ALTER TABLE nudge_log ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Employers see own log"
  ON nudge_log FOR ALL
  USING (employer_id = (
    SELECT id FROM employers WHERE auth_user_id = auth.uid()
  ));
```

---

## Phase N2 — Rule Engine

Create: `app/ai-progress-summarizer/lib/nudgeEngine.ts`

This is pure TypeScript — no external dependencies.

```typescript
import type { LearnerRow } from './types'

export type RiskStatus = 'on-track' | 'at-risk' | 'overdue' | 'no-data'

export interface NudgeTrigger {
  risk_statuses: RiskStatus[]
  min_days_inactive?: number
  completion_below?: number
  deadline_within?: number
  course_id?: number
}

export interface NudgeRule {
  id: string
  trigger_risk_statuses: RiskStatus[]
  trigger_min_days_inactive?: number
  trigger_completion_below?: number
  trigger_deadline_within?: number
  trigger_course_id?: number
  cooldown_hours: number
  channel: string
  message_tone: string
  message_mode: string
  message_template?: string
}

/**
 * Returns true if the learner passes all trigger conditions on this rule.
 */
export function passesTrigger(
  learner: LearnerRow,
  rule: NudgeRule,
  now = new Date()
): boolean {
  // Risk status check
  if (!rule.trigger_risk_statuses.includes(learner.risk_status as RiskStatus)) {
    return false
  }

  // Days inactive check
  if (rule.trigger_min_days_inactive && learner.last_active) {
    const lastActive = new Date(learner.last_active)
    const daysInactive = Math.floor(
      (now.getTime() - lastActive.getTime()) / (1000 * 60 * 60 * 24)
    )
    if (daysInactive < rule.trigger_min_days_inactive) return false
  }

  // Completion below check
  if (rule.trigger_completion_below != null) {
    if ((learner.completion_pct ?? 0) >= rule.trigger_completion_below) return false
  }

  // Deadline proximity check
  if (rule.trigger_deadline_within && learner.deadline) {
    const deadline = new Date(learner.deadline)
    const daysToDeadline = Math.floor(
      (deadline.getTime() - now.getTime()) / (1000 * 60 * 60 * 24)
    )
    if (daysToDeadline > rule.trigger_deadline_within) return false
  }

  // Course filter
  if (rule.trigger_course_id && learner.course_id !== rule.trigger_course_id) {
    return false
  }

  return true
}

/**
 * Returns true if this learner was already nudged by this rule within the cooldown window.
 * Pass in the last nudge sent_at for this (learner, rule) pair from the DB.
 */
export function isOnCooldown(
  lastNudgeSentAt: Date | null,
  cooldownHours: number,
  now = new Date()
): boolean {
  if (!lastNudgeSentAt) return false
  const elapsed = (now.getTime() - lastNudgeSentAt.getTime()) / (1000 * 60 * 60)
  return elapsed < cooldownHours
}

/**
 * Returns true if the learner has already received maxPerWeek nudges this calendar week.
 */
export function exceedsWeeklyCap(
  nudgesThisWeek: number,
  maxPerWeek: number
): boolean {
  return nudgesThisWeek >= maxPerWeek
}
```

---

## Phase N3 — Nudge Message Generator

Create: `app/ai-progress-summarizer/lib/nudgeGenerator.ts`

```typescript
interface GenerateNudgeInput {
  firstName: string
  courseName: string
  completionPct: number
  daysInactive: number
  deadlineLabel: string
  riskStatus: string
  progressSummary: string   // the AI summary from the Summarizer
  tone: 'encouraging' | 'urgent' | 'neutral'
  channel: 'email' | 'slack' | 'whatsapp' | 'in-portal'
}

const CHANNEL_LENGTH_INSTRUCTIONS: Record<string, string> = {
  email:      '3 to 5 sentences.',
  slack:      '2 to 3 sentences.',
  whatsapp:   '1 to 2 short conversational sentences.',
  'in-portal': '1 sentence only, under 120 characters total.',
}

const SYSTEM_PROMPT = `
You are a learner engagement assistant for a corporate LMS.
Write a short, personalised re-engagement nudge for a learner who needs encouragement.
Rules:
- Address the learner by first name only.
- Reference specific details: course name, completion %, deadline if relevant.
- Keep it warm and human — never sound like an automated reminder.
- No bullet points, no markdown, no sign-off, no subject line.
- Output only the message body text.
`.trim()

export async function generateNudgeMessage(input: GenerateNudgeInput): Promise<string> {
  const lengthInstruction = CHANNEL_LENGTH_INSTRUCTIONS[input.channel]

  const userPrompt = `
Learner first name: ${input.firstName}
Course: ${input.courseName}
Completion: ${input.completionPct}%
Last active: ${input.daysInactive} days ago
Deadline: ${input.deadlineLabel}
Risk status: ${input.riskStatus}
Situation summary: ${input.progressSummary}
Tone: ${input.tone}
Channel: ${input.channel}
Length: ${lengthInstruction}

Write the nudge message now.
`.trim()

  const res = await fetch('https://api.anthropic.com/v1/messages', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
      'x-api-key': process.env.ANTHROPIC_API_KEY!,
      'anthropic-version': '2023-06-01',
    },
    body: JSON.stringify({
      model: 'claude-sonnet-4-6',
      max_tokens: 300,
      system: SYSTEM_PROMPT,
      messages: [{ role: 'user', content: userPrompt }],
    }),
  })

  const data = await res.json()
  const text = data.content?.find((b: { type: string }) => b.type === 'text')?.text ?? ''
  return text.trim()
}
```

---

## Phase N4 — Email Adapter (Resend)

Install: `npm install resend`

Add to `.env` / `.env.example`:
```
RESEND_API_KEY=re_...
RESEND_FROM_EMAIL=noreply@yourdomain.com
```

Create: `app/ai-progress-summarizer/lib/channels/email.ts`

```typescript
import { Resend } from 'resend'

const resend = new Resend(process.env.RESEND_API_KEY)

interface SendEmailInput {
  to: string
  learnerName: string
  courseName: string
  message: string
}

export async function sendEmail(input: SendEmailInput): Promise<{ success: boolean; error?: string }> {
  const subject = `A quick note on your ${input.courseName} progress`

  try {
    const { error } = await resend.emails.send({
      from: process.env.RESEND_FROM_EMAIL!,
      to: input.to,
      subject,
      html: `
        <div style="font-family: Inter, sans-serif; max-width: 560px; margin: 0 auto; padding: 32px 24px; color: #1A2B5B;">
          <p style="font-size: 15px; line-height: 1.7; margin: 0 0 24px;">${input.message}</p>
          <hr style="border: none; border-top: 1px solid #EDE8DE; margin: 24px 0;" />
          <p style="font-size: 12px; color: #9AA0B5; margin: 0;">
            You're receiving this because your employer uses TalentLMS to track your training progress.
          </p>
        </div>
      `,
    })

    if (error) return { success: false, error: error.message }
    return { success: true }
  } catch (err: unknown) {
    return { success: false, error: err instanceof Error ? err.message : 'Unknown error' }
  }
}
```

---

## Phase N5 — Next.js API Routes

All routes under `app/api/nudge/`. All require Supabase auth (copy the pattern from `/api/summaries`).

### File map

```
app/api/nudge/
├── rules/
│   ├── route.ts              GET  (list rules)  POST  (create rule)
│   └── [id]/
│       └── route.ts          PATCH (update)     DELETE (delete)
├── run/
│   └── route.ts              POST (trigger job — manual or scheduled)
├── dry-run/
│   └── route.ts              POST (preview who qualifies, no sending)
├── job/
│   └── [jobId]/
│       └── route.ts          GET (poll job status)
├── log/
│   └── route.ts              GET (paginated history)
├── preview-message/
│   └── route.ts              POST (generate preview for drawer)
└── portal-notification/
    ├── route.ts              GET (for TalentLMS JS widget)
    └── [id]/
        └── mark-shown/
            └── route.ts      POST
```

### `app/api/nudge/rules/route.ts` (pattern)

```typescript
import { NextRequest, NextResponse } from 'next/server'
import { verifyEmployer } from '@/lib/serverAuth'
import { supabaseService } from '@/lib/supabaseClient'

export async function GET(req: NextRequest) {
  const employer = await verifyEmployer(req)
  if (!employer) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

  const { data, error } = await supabaseService
    .from('nudge_rules')
    .select('*')
    .eq('employer_id', employer.id)
    .order('created_at', { ascending: false })

  if (error) return NextResponse.json({ error: error.message }, { status: 500 })
  return NextResponse.json(data)
}

export async function POST(req: NextRequest) {
  const employer = await verifyEmployer(req)
  if (!employer) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

  const body = await req.json()
  const { data, error } = await supabaseService
    .from('nudge_rules')
    .insert({ ...body, employer_id: employer.id })
    .select()
    .single()

  if (error) return NextResponse.json({ error: error.message }, { status: 500 })
  return NextResponse.json(data, { status: 201 })
}
```

### `app/api/nudge/run/route.ts` — the core orchestration

```typescript
export async function POST(req: NextRequest) {
  const employer = await verifyEmployer(req)
  if (!employer) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

  const { dry_run = false, rule_ids = null } = await req.json()
  const jobId = `job_${Date.now()}`

  // 1. Fetch active rules for this employer
  let rulesQuery = supabaseService
    .from('nudge_rules')
    .select('*')
    .eq('employer_id', employer.id)
    .eq('enabled', true)

  if (rule_ids) rulesQuery = rulesQuery.in('id', rule_ids)
  const { data: rules } = await rulesQuery

  // 2. Fetch all learners for this employer (with risk status + summary)
  const { data: learners } = await supabaseService
    .from('learners')
    .select('*')
    .eq('employer_id', employer.id)

  // 3. For each rule, evaluate who qualifies
  const results = []
  for (const rule of rules ?? []) {
    for (const learner of learners ?? []) {
      // engine.passesTrigger checks
      // cooldown check (query nudge_log for last send time)
      // weekly cap check
      // if qualifies → generate message → send (if not dry_run) → log result
    }
  }

  return NextResponse.json({ job_id: jobId, results })
}
```

> Full implementation follows the logic from `nudgeEngine.ts`. Keep each learner's processing in a try/catch so one failure doesn't abort the entire job.

---

## Phase N6 — Frontend: Rules Tab

This is the most complex tab. Build components in this order:

```
1. RulesTab.tsx              — fetches rules list, handles open/close drawer state
2. RulesList.tsx             — table of rules with enable/disable toggle
3. RuleCard.tsx              — single row in the list
4. RuleDrawer.tsx            — Sheet wrapper, manages draft state with useReducer
5. TriggerSection.tsx        — checkboxes + number inputs for trigger conditions
6. ScheduleSection.tsx       — radio group + time input
7. DeliverySection.tsx       — channel radio + cooldown input
8. MessageSection.tsx        — AI/template toggle + tone select + preview block
9. MessagePreviewBlock.tsx   — green-tinted preview, regenerate button
```

**State pattern for the drawer:**

```typescript
type RuleDrawerState = {
  draft: Partial<NudgeRule>
  isDirty: boolean
  isSaving: boolean
  previewMessage: string | null
  isGeneratingPreview: boolean
}

type RuleDrawerAction =
  | { type: 'SET_FIELD'; field: keyof NudgeRule; value: unknown }
  | { type: 'SET_PREVIEW'; message: string }
  | { type: 'SET_GENERATING_PREVIEW'; value: boolean }
  | { type: 'RESET'; rule: NudgeRule }
  | { type: 'SAVE_START' }
  | { type: 'SAVE_DONE' }
```

Use `useReducer` — there are too many interdependent fields for plain `useState`.

**Regenerate preview flow:**
```
Click [↻ Regenerate]
  → setIsGeneratingPreview(true)
  → POST /api/nudge/preview-message { rule_id, sample_learner_id }
  → setPreviewMessage(result)
  → setIsGeneratingPreview(false)
```

---

## Phase N7 — Frontend: Overview + History + Settings

### Overview Tab

```typescript
// app/dashboard/nudge-bot/_components/overview/OverviewTab.tsx
// Data fetched server-side in page.tsx (initial) + SWR for live updates

const { data } = useSWR('/api/nudge/overview', fetcher, { refreshInterval: 30000 })
// overview endpoint returns: { stats, activeRules, recentNudges, upcomingRuns }
```

### History Tab

Paginated table. Client-side filter state + server-side data fetch:

```typescript
const [filters, setFilters] = useState({ page: 1, channel: '', status: '', search: '' })
const { data } = useSWR(
  `/api/nudge/log?${new URLSearchParams(filters).toString()}`,
  fetcher
)
```

### Settings Tab

Form state per channel. On "Connect Slack" → redirect to Slack OAuth (future). For now, just email (Resend API key in env).

"Send Test Email" button:
```typescript
const handleTestEmail = async () => {
  await fetch('/api/nudge/test-email', { method: 'POST' })
  // show toast: "Test email sent to your employer email address"
}
```

---

## Phase N8 — Scheduler

Two options — choose based on your infra:

### Option A: Supabase pg_cron (simplest — no new infra)

```sql
-- Run in Supabase SQL Editor
-- Requires pg_cron extension (enabled in Supabase dashboard under Extensions)
SELECT cron.schedule(
  'nudge-bot-daily',
  '0 9 * * *',                          -- every day at 09:00 UTC
  $$
    SELECT net.http_post(
      url := 'https://your-app.vercel.app/api/nudge/run',
      headers := '{"Content-Type":"application/json","X-Cron-Secret":"<secret>"}',
      body := '{"dry_run":false}'
    );
  $$
);
```

Add `X-CRON_SECRET` to `.env`. Verify it in the `/api/nudge/run` route before processing scheduled calls.

### Option B: n8n Webhook (if n8n is already set up)

```
[Cron Node: daily 09:00]
    │
    ▼
[HTTP Request: POST /api/nudge/run]
Headers: { X-Cron-Secret: ... }
Body: { "dry_run": false }
    │
    ▼
[IF: status === "success"]
    │ fail → Slack alert to admin
```

Option A is recommended since Supabase is already in the stack and has no extra cost.

---

## Phase N9 — Slack Adapter (optional)

Install: `npm install @slack/web-api`

Add to `.env`:
```
SLACK_BOT_TOKEN=xoxb-...
SLACK_DEFAULT_CHANNEL=#learning-nudges
```

Create: `app/ai-progress-summarizer/lib/channels/slack.ts`

```typescript
import { WebClient } from '@slack/web-api'

const slack = new WebClient(process.env.SLACK_BOT_TOKEN)

export async function sendSlack(learnerEmail: string, message: string, courseName: string) {
  // 1. Try to find the learner's Slack user by email
  let userId: string | undefined
  try {
    const result = await slack.users.lookupByEmail({ email: learnerEmail })
    userId = result.user?.id
  } catch {
    // not in workspace — fall back to channel post
  }

  const text = `:books: *Learning update — ${courseName}*\n${message}`

  if (userId) {
    // DM the learner directly
    const dm = await slack.conversations.open({ users: userId })
    await slack.chat.postMessage({ channel: dm.channel!.id!, text })
  } else {
    // Post to default channel
    await slack.chat.postMessage({
      channel: process.env.SLACK_DEFAULT_CHANNEL!,
      text,
    })
  }
}
```

---

## Phase N10 — Polish

### Dry Run Panel

Wire up the "Preview Only" dropdown option:
```typescript
const handleDryRun = async () => {
  setDryRunState('loading')
  const res = await fetch('/api/nudge/dry-run', { method: 'POST' })
  const data = await res.json()
  setDryRunResults(data)
  setDryRunState('shown')
}
```

Panel renders above the tab content (not inside a modal — it should be inline and scannable).

### Cooldown display in History

When a nudge is skipped, log it to `nudge_log` with `status: 'skipped'` and `failure_reason: 'cooldown'` or `failure_reason: 'weekly_cap'`. This gives admins full visibility into why a learner wasn't nudged.

### Toast notifications

Use shadcn `<Toaster />` (already likely installed from Summarizer work):
```typescript
// After successful run:
toast.success(`${sentCount} nudges sent successfully`)
// After partial failure:
toast.warning(`${sentCount} sent, ${failedCount} failed — see History`)
// After dry run:
toast.info(`Dry run complete — ${wouldSendCount} would be sent`)
```

---

## New Environment Variables

Add to `.env.example`:

```env
# Nudge Bot — Email
RESEND_API_KEY=re_...
RESEND_FROM_EMAIL=noreply@yourdomain.com

# Nudge Bot — Slack (optional)
SLACK_BOT_TOKEN=xoxb-...
SLACK_DEFAULT_CHANNEL=#learning-nudges

# Nudge Bot — Scheduler security
CRON_SECRET=<random string, used to verify scheduled calls>

# Nudge Bot — Config
MAX_NUDGES_PER_LEARNER_PER_WEEK=3
DEFAULT_COOLDOWN_HOURS=72
```

---

## Implementation Checklist

### Schema
- [ ] Create `supabase/nudge-schema.sql`
- [ ] Run it in Supabase SQL Editor
- [ ] Add RLS policies for all three new tables
- [ ] Verify with `SELECT * FROM nudge_rules LIMIT 1`

### Backend
- [ ] `app/ai-progress-summarizer/lib/nudgeEngine.ts`
- [ ] `app/ai-progress-summarizer/lib/nudgeGenerator.ts`
- [ ] `app/ai-progress-summarizer/lib/channels/email.ts` (Resend)
- [ ] `app/api/nudge/rules/route.ts` (GET + POST)
- [ ] `app/api/nudge/rules/[id]/route.ts` (PATCH + DELETE)
- [ ] `app/api/nudge/run/route.ts`
- [ ] `app/api/nudge/dry-run/route.ts`
- [ ] `app/api/nudge/log/route.ts`
- [ ] `app/api/nudge/preview-message/route.ts`
- [ ] All routes enforce `employer_id` ownership

### Frontend
- [ ] Replace mock data stub with real API calls in page.tsx
- [ ] Overview tab — stats, active rules, recent nudges
- [ ] Rules tab — list, drawer, all 4 sections, preview
- [ ] History tab — table, filters, view-message modal
- [ ] Settings tab — channel cards, test email button
- [ ] Dry run panel wired to "Preview Only" dropdown
- [ ] Run Now button with job polling

### Scheduler
- [ ] Enable pg_cron in Supabase dashboard
- [ ] Add `CRON_SECRET` to env
- [ ] Add cron secret verification to `/api/nudge/run`
- [ ] Create cron job via Supabase SQL Editor

### Build health
- [ ] `npx tsc --noEmit` passes
- [ ] `npm run build` passes
- [ ] No new `any` types introduced

### Test with real data
- [ ] Create a rule manually via the UI
- [ ] Run dry-run and verify correct learners are shown
- [ ] Send a real test nudge to your own email
- [ ] Verify it appears in History tab with "Sent" status
- [ ] Wait for cooldown window, verify the same learner is skipped on next run
