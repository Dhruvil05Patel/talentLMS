import { createClient } from '@supabase/supabase-js';
import fs from 'fs';
import path from 'path';
import pg from 'pg';

const envPath = path.join(process.cwd(), '.env');
const envContent = fs.readFileSync(envPath, 'utf8');
const envVars = {};
envContent.split('\n').forEach(line => {
  if (line && !line.startsWith('#')) {
    const [key, ...value] = line.split('=');
    if (key) envVars[key.trim()] = value.join('=').trim();
  }
});

// Since we need to run raw SQL DDL (CREATE TABLE), supabase-js won't work easily unless we use rpc.
// Wait, we don't have pg installed, but we can just use the Supabase REST API `rpc`? No, no rpc exists for executing arbitrary sql.
// Wait, if I just tell the user to run it, that is the most reliable. But wait, I can use the node-postgres pool if `pg` is installed.
// Let's check if `pg` is installed.
