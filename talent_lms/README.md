TalentLMS — Next.js (App Router) project.

This repo contains two main product areas we implemented:
- **Progress Summarizer** (`/ai-progress-summarizer`): Supabase-backed learner progress + AI summary generation.
- **Nudge Bot** (`/dashboard/nudge-bot`): rule-based re-engagement orchestration (Supabase + AI message generation + delivery/logging + dry-run).

## Getting Started

First, run the development server:

```bash
npm run dev
# or
yarn dev
# or
pnpm dev
# or
bun dev
```

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

You can start editing the page by modifying `app/page.tsx`. The page auto-updates as you edit the file.

## What we built (high level)

### 1) Progress Summarizer (`/ai-progress-summarizer`)
- Supabase-backed learner fetch + filtering.
- Persists AI-generated progress summaries into the `learners` table via `/api/summaries`.
- Employer-only login; learner reads/updates are scoped by `employer_id`.

### 2) Nudge Bot (`/dashboard/nudge-bot`)
- Four-tab dashboard (Overview / Rules / History / Settings).
- Rule management + orchestration via Next.js API routes under `app/api/nudge/*`.
- Dry-run support, message preview, and execution logging.
- Supabase schema + RLS for:
  - `nudge_rules`
  - `nudge_log`
  - `portal_notifications`

## Configuration & environment

This project expects Supabase + AI/email providers to be configured via env vars (see `.env.example` in `talent_lms/`). Common areas:
- Supabase URL/keys used by the app (`NEXT_PUBLIC_SUPABASE_*`, `SUPABASE_SERVICE_ROLE_KEY`)
- Summarizer generation (Anthropic / Claude API key)
- Nudge delivery MVP (Resend API key/from email)

## Learn More

To learn more about Next.js, take a look at the following resources:

- [Next.js Documentation](https://nextjs.org/docs) - learn about Next.js features and API.
- [Learn Next.js](https://nextjs.org/learn) - an interactive Next.js tutorial.

You can check out [the Next.js GitHub repository](https://github.com/vercel/next.js) - your feedback and contributions are welcome!

## Deploy on Vercel

The easiest way to deploy your Next.js app is to use the [Vercel Platform](https://vercel.com/new?utm_medium=default-template&filter=next.js&utm_source=create-next-app&utm_campaign=create-next-app-readme) from the creators of Next.js.

Check out our [Next.js deployment documentation](https://nextjs.org/docs/app/building-your-application/deploying) for more details.
