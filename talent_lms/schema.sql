-- Supabase schema for TalentLMS Learners and Employers

CREATE TABLE employers (
  id            BIGSERIAL PRIMARY KEY,
  name          TEXT    NOT NULL,
  email         TEXT    UNIQUE,
  auth_user_id  UUID    UNIQUE,
  domain        TEXT    UNIQUE,
  created_at    TIMESTAMP DEFAULT now()
);

CREATE TABLE learners (
  user_id               BIGINT PRIMARY KEY,
  auth_user_id          UUID UNIQUE,
  name                  TEXT NOT NULL,
  email                 TEXT UNIQUE NOT NULL,
  avatar_url            TEXT,
  course_id             INTEGER,
  course_name           TEXT,
  group_name            TEXT,
  enrolled_at           TIMESTAMP,
  completion_pct        INTEGER,
  last_active           TEXT,
  time_spent_mins       INTEGER,
  quiz_avg_pct          INTEGER,
  deadline              DATE,
  risk_status           TEXT,
  summary               TEXT,
  summary_generated_at  TIMESTAMP,
  employer_id           BIGINT REFERENCES employers(id) ON DELETE CASCADE
);

-- Indexes for faster queries
CREATE INDEX idx_learners_course_name   ON learners(course_name);
CREATE INDEX idx_learners_group_name    ON learners(group_name);
CREATE INDEX idx_learners_risk_status   ON learners(risk_status);
CREATE INDEX idx_learners_auth_user     ON learners(auth_user_id);
