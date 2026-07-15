# Nudge Bot — Design Specification

**Route:** `/dashboard/nudge-bot`  
**Inherits:** All design tokens from `PROGRESS_SUMMARIZER_DESIGN_REVISED.md`  
**Status:** 📐 Ready for implementation

---

## Page Structure

One page, four tabs. The sidebar nav already exists — the Nudge Bot entry just needs to be un-locked (remove the 🔒 and point to this route).

```
/dashboard/nudge-bot
├── Tab: Overview        ← stats + active rules summary + recent nudges
├── Tab: Rules           ← create / edit nudge rules
├── Tab: History         ← full log of every nudge sent
└── Tab: Settings        ← connect channels (email, Slack, etc.)
```

---

## Design Tokens

All inherited from the revised Progress Summarizer palette. No new tokens needed.

```
bg-page:          #FAF8F3   warm ivory
bg-card:          #FFFFFF
border-default:   #EDE8DE
navy:             #1A2B5B   headings
orange:           #F96A1E   accent / at-risk
green-cta:        #1A5438   primary buttons
text-primary:     #1A2B5B
text-secondary:   #5C6680
text-muted:       #9AA0B5
font-display:     Plus Jakarta Sans
font-body:        Inter
card-radius:      12px
badge-radius:     6px
```

**Channel accent colours** (only addition):

```
email:      #3B82F6   (blue-500)
slack:      #4A154B   (Slack purple)
whatsapp:   #25D366   (WhatsApp green)
in-portal:  var(--orange)
```

---

## Page Header

```
┌─────────────────────────────────────────────────────────────────┐
│  ▌ Nudge Bot                          [Run Now ▾]               │
│    Automated re-engagement for at-risk learners                  │
│    Last run: Today 09:00 · 12 sent                              │
│                                                                  │
│  [Overview]  [Rules]  [History]  [Settings]                     │
└─────────────────────────────────────────────────────────────────┘
```

- `▌` — 4px × 28px orange vertical bar, same as Progress Summarizer header
- H1: Plus Jakarta Sans 32px/800, `--navy`
- Subtitle: Inter 15px/400, `--text-secondary`
- "Last run" timestamp: Inter 12px/500, `--text-muted`
- **"Run Now" button** — green pill, same style as "Generate All Summaries":
  ```
  bg: #1A5438   text: white   font: Plus Jakarta Sans 14px/700
  border-radius: 9999px   padding: 12px 24px
  ```
  Dropdown arrow opens two options: "Run All Active Rules" / "Preview Only (Dry Run)"
- Tab bar: Inter 14px/600, active tab gets orange bottom border (2px), inactive is `--text-muted`

---

## Tab 1 — Overview

```
[A] STATS ROW (4 KPI cards)

[B] ACTIVE RULES  (compact horizontal scroll on mobile)

[C] RECENT NUDGES  (last 10 log entries)

[D] UPCOMING RUNS  (next scheduled job times)
```

### [A] Stats Row

Same KPI card structure as Progress Summarizer. Coloured top borders:

| Card | Top border | Value color | Label |
|------|-----------|-------------|-------|
| Total Nudges Sent | `--navy` | `--navy` | all time |
| Sent This Week | `--orange` | `--orange` | with ↑/↓ vs last week |
| Active Rules | `--green-cta` | `--green-cta` | running automatically |
| Learners Re-engaged | `#15803D` | `#15803D` | logged in within 48h of nudge |

### [B] Active Rules Summary

Horizontally scrollable row of compact rule cards:

```
┌──────────────────────────────────────────────┐
│  [📧]  Overdue — Daily Email                 │
│  overdue · 7d inactive · 72h cooldown        │
│  Last run: Today · 4 sent                    │
│                    [Edit]  [● enabled toggle] │
└──────────────────────────────────────────────┘
```

- Card: white, `border: 1px solid var(--border-default)`, radius 10px, padding 16px
- Channel icon: coloured dot matching channel accent colour
- Rule name: Plus Jakarta Sans 14px/700, `--navy`
- Trigger summary: Inter 12px/400, `--text-secondary`
- Toggle: shadcn/ui `<Switch />` — thumb uses `--green-cta` when on, gray when off

### [C] Recent Nudges

Simple table, last 10 entries, no pagination needed here (full log is in History tab):

```
Learner          Course             Channel   Sent        Status
─────────────────────────────────────────────────────────────────
John Doe         Safety Training    📧 Email  Today 9am   ✓ Sent
Priya S.         Onboarding 101     💬 Slack  Today 9am   ✓ Sent
Mark T.          Data Privacy       📧 Email  Today 9am   ✗ Failed
```

- Table: no outer border, rows separated by `1px solid var(--border-default)`
- "✓ Sent": Inter 12px/600, `#15803D`
- "✗ Failed": Inter 12px/600, `#DC2626` + inline "Retry" link in orange

### [D] Upcoming Scheduled Runs

Plain list, 3 entries max:

```
Tomorrow 09:00   Overdue Learners — Daily Email
Mon 09:00        At Risk — Weekly Slack Alert
```

Inter 13px/400, `--text-secondary`. Date/time in `--text-muted`.

---

## Tab 2 — Rules

```
[A] RULES LIST                      [+ New Rule]

[B] RULE DETAIL DRAWER (opens on row click or New Rule)
```

### [A] Rules List

```
┌──────────────────────────────────────────────────────────────────────────┐
│  ●  Overdue Learners — Daily Email      📧 Email   Daily 9am   [Edit]    │
│  ●  At Risk — Slack Alert               💬 Slack   Manual      [Edit]    │
│  ○  Low Quiz Score — WhatsApp           📱 WA      Weekly      [Edit]    │
└──────────────────────────────────────────────────────────────────────────┘
```

- `●` green / `○` gray = enabled/disabled (shadcn Switch)
- Row hover: bg `#FAF8F3`, cursor pointer
- Rule name: Plus Jakarta Sans 14px/600, `--navy`
- Channel badge + schedule: Inter 13px/400, `--text-secondary`
- `[+ New Rule]` button: outline style, navy border, navy text, pill shape, padding 8px 16px

### [B] Rule Detail Drawer

shadcn `<Sheet>` anchored to the right, 480px wide on desktop, full-screen on mobile.

```
┌─── Rule: Overdue Learners — Daily Email ───────── [✕] ────────┐
│                                              [Delete]  [Save ●] │
│                                                                  │
│  ── 1. TRIGGER ────────────────────────────────────────────     │
│  Risk status     [✓] On Track  [✓] At Risk  [✓] Overdue        │
│  Days inactive   ≥ [ 7 ] days                                   │
│  Completion      < [ 80 ] %                (optional)           │
│  Deadline within [ 14 ] days               (optional)           │
│  Course          [All Courses ▾]                                 │
│                                                                  │
│  ── 2. SCHEDULE ───────────────────────────────────────────     │
│  (●) Daily  ( ) Weekly  ( ) Manual only                         │
│  At [09 : 00]                                                    │
│                                                                  │
│  ── 3. DELIVERY ───────────────────────────────────────────     │
│  Channel  (●) Email  ( ) Slack  ( ) WhatsApp  ( ) In-Portal    │
│  Cooldown [ 72 ] hours between nudges to same learner           │
│                                                                  │
│  ── 4. MESSAGE ─────────────────────────────────────────────    │
│  (●) AI-generated    ( ) Custom template                        │
│  Tone  [Encouraging ▾]                                           │
│                                                                  │
│  ┌────────────────────────────────────────────────────────┐     │
│  │ ✦ Preview                            [↻ Regenerate]   │     │
│  │ bg: #F0FDF4  border: #BBF7D0                           │     │
│  │ "Hey John! You're 42% through Safety Training…"        │     │
│  └────────────────────────────────────────────────────────┘     │
└──────────────────────────────────────────────────────────────────┘
```

**Drawer design details:**
- Header: Plus Jakarta Sans 18px/700, `--navy`, close `✕` icon button
- Section labels: Inter 11px/700 UPPERCASE + letter-spacing 0.08em, `--text-muted`
- Section divider: `1px solid var(--border-default)`
- Inputs: Inter 14px, radius 8px, border `1px solid var(--border-default)`, focus ring orange
- Radio groups: orange accent dot when selected
- Checkboxes: orange check when selected
- [Save] button: green pill, same as "Run Now"
- [Delete] button: Inter 13px/500, `#DC2626`, no border, text only
- **Preview block**: green-tinted (`#F0FDF4` bg, `#BBF7D0` border) — distinct from the orange AI Summary block in the Summarizer, so admins can visually separate "this is a nudge preview" from "this is a progress summary"
- Preview label: `✦ Preview` in Inter 11px/700 uppercase, `#15803D`
- Preview text: Inter 14px/400, `--text-primary`, line-height 1.7
- Regenerate icon: `↻` icon button, `--orange`, no border

---

## Tab 3 — History

```
FILTERS:  [Date range ▾]  [Rule ▾]  [Channel ▾]  [Status ▾]  [Search learner...]

┌──┬──────────────┬─────────────────┬──────────┬───────────┬──────────┬─────────┐
│#  │ Learner      │ Course          │ Channel  │ Sent At   │ Status   │ Actions │
├──┼──────────────┼─────────────────┼──────────┼───────────┼──────────┼─────────┤
│142│ John Doe     │ Safety Training │📧 Email  │ Jul 1 9am │ ✓ Sent   │ View    │
│141│ Priya S.     │ Onboarding 101  │💬 Slack  │ Jul 1 9am │ ✓ Sent   │ View    │
│140│ Mark T.      │ Data Privacy    │📧 Email  │ Jul 1 9am │ ✗ Failed │ Retry   │
└──┴──────────────┴─────────────────┴──────────┴───────────┴──────────┴─────────┘

[← Previous]  Page 1 of 4  [Next →]
```

- Filter bar: white card, same style as Progress Summarizer filter bar
- Table: no outer border, warm `#FAF8F3` every other row (zebra, subtle)
- Learner name: Plus Jakarta Sans 14px/600, `--navy`
- All other cells: Inter 13px/400, `--text-secondary`
- Status "✓ Sent": `#15803D`, bold. "✗ Failed": `#DC2626`, bold.
- "View" action: opens a modal showing the exact message sent
- "Retry" action: orange text link, re-queues the failed delivery

**View Message Modal:**
```
┌── Nudge sent to John Doe — Jul 1, 2026 09:00 ──────────────────┐
│  Course:    Safety Training                                      │
│  Channel:   📧 Email                                             │
│  Rule:      Overdue Learners — Daily Email                       │
│  Status:    ✓ Delivered                                          │
│  ─────────────────────────────────────────────────────────────  │
│  Message:                                                        │
│  ┌─────────────────────────────────────────────────────────┐   │
│  │ "Hey John! You've been making great progress on Safety  │   │
│  │ Training — you're 42% through. Picking it up for just   │   │
│  │ 20 mins today keeps you on track for July 20."          │   │
│  └─────────────────────────────────────────────────────────┘   │
│                                                        [Close]   │
└──────────────────────────────────────────────────────────────────┘
```

Modal message box: same green-tinted bg as the Drawer preview.

---

## Tab 4 — Settings

```
── CONNECTED CHANNELS ──────────────────────────────────────────────────

┌─────────────────────────────────────────────────────── [● Connected] ─┐
│  📧 Email via Resend                                                   │
│  From: noreply@yourdomain.com                       [Send Test Email →] │
└────────────────────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────── [○ Not connected] ─┐
│  💬 Slack                                                              │
│  Post nudges to a Slack workspace channel or DM.  [Connect Slack →]   │
└────────────────────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────── [○ Not connected] ─┐
│  📱 WhatsApp via Twilio                                                │
│  Requires pre-approved message template.         [Connect WhatsApp →] │
└────────────────────────────────────────────────────────────────────────┘

── GLOBAL DEFAULTS ─────────────────────────────────────────────────────

  Max nudges per learner per week   [ 3 ]
  Default tone                      [Encouraging ▾]
```

**Channel card design:**
- White card, radius 12px, border `1px solid var(--border-default)`
- Padding: 20px
- Channel icon + name: Plus Jakarta Sans 15px/700, `--navy`
- Description: Inter 13px/400, `--text-secondary`
- "● Connected" badge: green pill, `#F0FDF4` bg, `#15803D` text
- "○ Not connected" badge: gray, `--no-data-bg` / `--text-muted`
- "Connect" button: outline pill, navy border/text
- "Send Test Email" button: outline pill, orange border/text

---

## Dry Run Panel

Appears as a slide-down panel below the header after clicking "Preview Only (Dry Run)":

```
┌── Dry Run — would send 9 nudges ──────────────────── [✕ Cancel] ──────┐
│                                                                         │
│  ✓  John Doe       Safety Training   Email   last nudge: 4d ago        │
│  ✓  Priya Singh    Onboarding 101    Slack   last nudge: never         │
│  ✗  Mark Thompson  Data Privacy      Email   SKIP: cooldown (18h left) │
│  ✗  Sarah Lee      Safety Training   Email   SKIP: status changed      │
│                                                                         │
│                                          [Cancel]  [Confirm & Send →]  │
└─────────────────────────────────────────────────────────────────────────┘
```

- Panel: white, `border: 1px solid var(--border-default)`, radius 12px, padding 20px
- `✓` rows: Inter 13px/400, `--text-primary`
- `✗` rows: Inter 13px/400, `--text-muted`, with skip reason in orange italic
- "Confirm & Send →" button: green pill
- "Cancel" button: plain text, `--text-secondary`

---

## Empty States

| Context | Message | CTA |
|---------|---------|-----|
| No rules created | "No rules yet. Create your first rule to start nudging learners automatically." | "Create Rule" (green pill) |
| No nudge history | "No nudges sent yet. Run a rule to see delivery history here." | None |
| Filters return nothing | "No nudges match these filters." | "Clear filters" (orange text link) |
| Channel not connected | Per channel card above | Connect button |

Empty state structure: centered in content area, `✦` icon in orange at 40px, Plus Jakarta Sans 18px/600 heading, Inter 14px/400 sub-text, CTA below.

---

## Responsive Behaviour

| Breakpoint | Rules List | Drawer | History Table | Active Rules |
|------------|-----------|--------|---------------|--------------|
| `≥ 1280px` | Full table row | Side sheet 480px | All columns | Horizontal cards |
| `1024–1279px` | Full row | Side sheet 400px | Hide "Course" col | Horizontal cards |
| `768–1023px` | Compact cards | Bottom sheet | Channel + Status | Stacked cards |
| `< 768px` | Stacked cards | Full-screen | Card per log entry | Stacked |

---

## Component List (shadcn/ui)

```
Tabs, TabsList, TabsTrigger, TabsContent
Sheet, SheetContent, SheetHeader, SheetTitle, SheetClose
Dialog, DialogContent, DialogHeader
Table, TableHeader, TableBody, TableRow, TableHead, TableCell
Switch
Select, SelectTrigger, SelectContent, SelectItem
Checkbox
RadioGroup, RadioGroupItem
Badge
Button
Input
Separator
Skeleton
ScrollArea
DropdownMenu, DropdownMenuTrigger, DropdownMenuContent, DropdownMenuItem
```
