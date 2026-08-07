-- Supabase schema for TalentLMS (Employer / Employee)
-- Run in Supabase SQL editor or via `supabase db push`.

-- ============ employers ============
CREATE TABLE IF NOT EXISTS employers (
  id          BIGSERIAL PRIMARY KEY,
  name        TEXT NOT NULL,
  email       TEXT UNIQUE NOT NULL,
  auth_user_id UUID UNIQUE,
  domain      TEXT,
  created_at  TIMESTAMP DEFAULT now()
);

-- ============ employees (the 2nd login) ============
CREATE TABLE IF NOT EXISTS employees (
  id            BIGSERIAL PRIMARY KEY,
  employer_id   BIGINT NOT NULL REFERENCES employers(id) ON DELETE CASCADE,
  name          TEXT NOT NULL,
  email         TEXT UNIQUE NOT NULL,
  role          TEXT NOT NULL DEFAULT 'employee', -- 'admin' | 'manager' | 'employee'
  auth_user_id  UUID UNIQUE, -- links to supabase auth.users
  created_at    TIMESTAMP DEFAULT now()
);

-- ============ learners (already used by AI summarizer) ============
CREATE TABLE IF NOT EXISTS learners (
  user_id               BIGINT PRIMARY KEY,
  employer_id           BIGINT REFERENCES employers(id) ON DELETE CASCADE,
  employee_id           BIGINT REFERENCES employees(id) ON DELETE SET NULL,
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
  summary_generated_at  TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_learners_course_name ON learners(course_name);
CREATE INDEX IF NOT EXISTS idx_learners_group_name  ON learners(group_name);
CREATE INDEX IF NOT EXISTS idx_learners_risk_status ON learners(risk_status);
CREATE INDEX IF NOT EXISTS idx_learners_employer    ON learners(employer_id);
CREATE INDEX IF NOT EXISTS idx_learners_auth_user   ON learners(auth_user_id);

-- ============ Row Level Security ============
ALTER TABLE employers ENABLE ROW LEVEL SECURITY;
ALTER TABLE employees ENABLE ROW LEVEL SECURITY;
ALTER TABLE learners  ENABLE ROW LEVEL SECURITY;

-- Employees see only their own employer's rows.
CREATE POLICY "employer_isolated_employers" ON employers
  FOR ALL USING (
    auth_user_id = auth.uid()
    OR id IN (SELECT employer_id FROM employees WHERE auth_user_id = auth.uid())
    OR id IN (SELECT employer_id FROM learners WHERE auth_user_id = auth.uid())
  );

CREATE POLICY "employer_isolated_employees" ON employees
  FOR ALL USING (auth_user_id = auth.uid() OR employer_id IN (
    SELECT employer_id FROM employees WHERE auth_user_id = auth.uid()
  ));

CREATE POLICY "employer_isolated_learners" ON learners
  FOR ALL USING (
    auth_user_id = auth.uid()
    OR employer_id IN (
      SELECT id FROM employers WHERE auth_user_id = auth.uid()
    )
    OR employer_id IN (
      SELECT employer_id FROM employees WHERE auth_user_id = auth.uid()
    )
  );
