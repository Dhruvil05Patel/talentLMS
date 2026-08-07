-- Optional Nudge Bot scheduler.
-- Enable pg_cron and pg_net in Supabase before running.
-- Replace the URL and secret before applying in production.

SELECT cron.schedule(
  'nudge-bot-daily',
  '0 9 * * *',
  $$
    SELECT net.http_post(
      url := 'https://your-app.vercel.app/api/nudge/run',
      headers := '{"Content-Type":"application/json","X-Cron-Secret":"replace-me","X-Employer-Id":"1"}',
      body := '{"dry_run":false}'
    );
  $$
);

