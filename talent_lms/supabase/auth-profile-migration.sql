-- Run this once on an existing Supabase project before using employee/employer auth.

ALTER TABLE employers
  ADD COLUMN IF NOT EXISTS email TEXT UNIQUE,
  ADD COLUMN IF NOT EXISTS auth_user_id UUID UNIQUE;

ALTER TABLE learners
  ADD COLUMN IF NOT EXISTS auth_user_id UUID UNIQUE;

CREATE INDEX IF NOT EXISTS idx_learners_auth_user ON learners(auth_user_id);
