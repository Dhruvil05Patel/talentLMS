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

async function forceCreate() {
  const email = 'admin@talentlms.com';
  
  // Clean up existing
  await supabase.from('employers').delete().eq('email', email);
  await supabase.from('employers').delete().eq('domain', 'talentlms.com');
  const { data: usersData } = await supabase.auth.admin.listUsers();
  const existingUser = usersData.users.find(u => u.email === email);
  if (existingUser) {
    await supabase.auth.admin.deleteUser(existingUser.id);
  }

  // Create auth user
  const { data: authData, error: authError } = await supabase.auth.admin.createUser({
    email: email,
    password: 'password123',
    email_confirm: true,
    user_metadata: { account_type: 'employer', name: 'Admin User' }
  });
  
  if (authError) { console.error("Auth error", authError); return; }
  const userId = authData.user.id;

  // Insert employer with a very high ID to avoid sequence issues
  const { data: employerData, error: employerError } = await supabase
    .from('employers')
    .insert({
      id: 9999, // Super high to avoid conflict
      name: 'TalentLMS Admin Corp',
      email: email,
      auth_user_id: userId,
      domain: 'talentlms.com'
    })
    .select('id')
    .single();

  if (employerError) { console.error("Employer insert error", employerError); return; }

  // Link it
  await supabase.auth.admin.updateUserById(userId, {
    user_metadata: { account_type: 'employer', name: 'Admin User', employer_id: employerData.id }
  });

  console.log("SUCCESS!");
}

forceCreate();
