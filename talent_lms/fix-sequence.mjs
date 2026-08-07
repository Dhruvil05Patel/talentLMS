import { createClient } from '@supabase/supabase-js';
import fs from 'fs';
import path from 'path';

const envPath = path.join(process.cwd(), '.env');
const envContent = fs.readFileSync(envPath, 'utf8');
const envVars = {};
envContent.split('\n').forEach(line => {
  if (line && !line.startsWith('#')) {
    const [key, ...value] = line.split('=');
    if (key) envVars[key.trim()] = value.join('=').trim();
  }
});

const supabase = createClient(envVars['NEXT_PUBLIC_SUPABASE_URL'], envVars['SUPABASE_SERVICE_ROLE_KEY']);

async function fixSequence() {
  // We can just run a quick RPC or query if we have it, but wait, supabase JS doesn't support raw SQL queries out of the box unless we use an RPC.
  // Instead, since it's just local dev, I can use the supabase REST API? No, the REST API doesn't support raw SQL either.
  // But wait! If we just insert without ID until it succeeds...
  
  let success = false;
  let attempts = 0;
  
  // Since we inserted 100 records, the sequence is at 1 or 3. We can just insert 100 dummy records that will fail until it passes 100.
  // Actually, we can just insert with a specific ID to jump the sequence? No, explicit insert doesn't advance sequence.
  
  while (!success && attempts < 150) {
    attempts++;
    const { error } = await supabase
      .from('employers')
      .insert({
        name: `dummy_seq_${attempts}`,
        email: `dummy_seq_${attempts}@example.com`,
        domain: `dummy_seq_${attempts}.com`
      });
      
    if (!error) {
       console.log("Sequence synced at attempt", attempts);
       success = true;
       // clean up
       await supabase.from('employers').delete().eq('name', `dummy_seq_${attempts}`);
    } else if (error.code !== '23505' || !error.message.includes('pkey')) {
       console.error("Other error:", error);
       break;
    }
  }
}

fixSequence();
