-- Nudge Bot schema

CREATE TABLE IF NOT EXISTS nudge_rules (
  id                        UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  employer_id               BIGINT NOT NULL REFERENCES employers(id) ON DELETE CASCADE,
  name                      TEXT NOT NULL,
  enabled                   BOOLEAN NOT NULL DEFAULT TRUE,

  trigger_risk_statuses     TEXT[] NOT NULL DEFAULT ARRAY['at-risk','overdue'],
  trigger_min_days_inactive INT,
  trigger_completion_below  INT,
  trigger_deadline_within   INT,
  trigger_course_id         INT,

  schedule                  TEXT NOT NULL DEFAULT 'manual',
  schedule_time             TEXT DEFAULT '09:00',
  schedule_days             TEXT[],

  channel                   TEXT NOT NULL DEFAULT 'email',
  cooldown_hours            INT NOT NULL DEFAULT 72,

  message_mode              TEXT NOT NULL DEFAULT 'ai-generated',
  message_tone              TEXT NOT NULL DEFAULT 'encouraging',
  message_template          TEXT,

  created_at                TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at                TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_nudge_rules_employer ON nudge_rules(employer_id);

CREATE TABLE IF NOT EXISTS nudge_log (
  id                    BIGSERIAL PRIMARY KEY,
  employer_id           BIGINT NOT NULL REFERENCES employers(id) ON DELETE CASCADE,
  rule_id               UUID REFERENCES nudge_rules(id) ON DELETE SET NULL,
  learner_id            BIGINT NOT NULL REFERENCES learners(user_id) ON DELETE CASCADE,
  learner_name          TEXT NOT NULL,
  learner_email         TEXT NOT NULL,
  course_name           TEXT NOT NULL,
  risk_status_at_send   TEXT NOT NULL,
  channel               TEXT NOT NULL,
  message               TEXT NOT NULL,
  status                TEXT NOT NULL DEFAULT 'pending',
  failure_reason        TEXT,
  job_id                TEXT,
  sent_at               TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  opened_at             TIMESTAMPTZ
);

CREATE INDEX IF NOT EXISTS idx_nudge_log_employer ON nudge_log(employer_id);
CREATE INDEX IF NOT EXISTS idx_nudge_log_learner ON nudge_log(learner_id);
CREATE INDEX IF NOT EXISTS idx_nudge_log_sent_at ON nudge_log(sent_at DESC);

CREATE TABLE IF NOT EXISTS portal_notifications (
  id          BIGSERIAL PRIMARY KEY,
  employer_id BIGINT NOT NULL REFERENCES employers(id) ON DELETE CASCADE,
  learner_id  BIGINT NOT NULL REFERENCES learners(user_id) ON DELETE CASCADE,
  message     TEXT NOT NULL,
  shown       BOOLEAN NOT NULL DEFAULT FALSE,
  created_at  TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  shown_at    TIMESTAMPTZ
);

CREATE INDEX IF NOT EXISTS idx_portal_notif_learner ON portal_notifications(learner_id, shown);

ALTER TABLE nudge_rules ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Employers see own rules" ON nudge_rules;
CREATE POLICY "Employers see own rules"
  ON nudge_rules FOR ALL
  USING (employer_id = (
    SELECT id FROM employers WHERE auth_user_id = auth.uid()
  ))
  WITH CHECK (employer_id = (
    SELECT id FROM employers WHERE auth_user_id = auth.uid()
  ));

ALTER TABLE nudge_log ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Employers see own log" ON nudge_log;
CREATE POLICY "Employers see own log"
  ON nudge_log FOR ALL
  USING (employer_id = (
    SELECT id FROM employers WHERE auth_user_id = auth.uid()
  ))
  WITH CHECK (employer_id = (
    SELECT id FROM employers WHERE auth_user_id = auth.uid()
  ));

ALTER TABLE portal_notifications ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Employers see own portal notifications" ON portal_notifications;
CREATE POLICY "Employers see own portal notifications"
  ON portal_notifications FOR ALL
  USING (employer_id = (
    SELECT id FROM employers WHERE auth_user_id = auth.uid()
  ))
  WITH CHECK (employer_id = (
    SELECT id FROM employers WHERE auth_user_id = auth.uid()
  ));
