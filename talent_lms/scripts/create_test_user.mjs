import { createClient } from '@supabase/supabase-js';
import fs from 'fs';
import path from 'path';

// Read .env file manually
const envPath = path.join(process.cwd(), '.env');
const envContent = fs.readFileSync(envPath, 'utf8');
const envVars = {};
envContent.split('\n').forEach(line => {
  if (line && !line.startsWith('#')) {
    const [key, ...value] = line.split('=');
    if (key) envVars[key.trim()] = value.join('=').trim();
  }
});

const supabaseUrl = envVars['NEXT_PUBLIC_SUPABASE_URL'];
const supabaseServiceKey = envVars['SUPABASE_SERVICE_ROLE_KEY'];

const supabase = createClient(supabaseUrl, supabaseServiceKey);

async function createTestUser() {
  const email = 'admin@talentlms.com';
  const password = 'password123';
  const companyName = 'TalentLMS Admin Corp';

  console.log(`Creating user ${email}...`);

  // 1. Create auth user
  const { data: authData, error: authError } = await supabase.auth.admin.createUser({
    email: email,
    password: password,
    email_confirm: true,
    user_metadata: {
      account_type: 'employer',
      name: 'Admin User'
    }
  });

  if (authError) {
    if (authError.message.includes('already been registered')) {
        console.log("User already exists in auth.users. Fetching...");
        // If they already exist, we need to find their ID. We can't fetch by email easily without listUsers
        const { data: usersData, error: listError } = await supabase.auth.admin.listUsers();
        if (listError) {
            console.error("Error listing users:", listError);
            return;
        }
        const existingUser = usersData.users.find(u => u.email === email);
        if (existingUser) {
            await ensureEmployerRecord(existingUser.id, email, companyName);
        } else {
            console.error("Could not find user in list");
        }
        return;
    }
    console.error("Error creating user:", authError);
    return;
  }

  console.log("Auth user created. ID:", authData.user.id);
  await ensureEmployerRecord(authData.user.id, email, companyName);
}

async function ensureEmployerRecord(userId, email, companyName) {
  // 2. Create employer record
  const { data: employerData, error: employerError } = await supabase
    .from('employers')
    .insert({
      name: companyName,
      email: email,
      auth_user_id: userId,
      domain: 'talentlms.com'
    })
    .select('id')
    .single();

  if (employerError) {
      if (employerError.code === '23505') { // Unique violation
          console.log("Employer record already exists for this email/domain.");
          return;
      }
      console.error("Error creating employer record:", employerError);
      return;
  }

  // 3. Update user metadata with employer_id
  await supabase.auth.admin.updateUserById(userId, {
    user_metadata: {
      account_type: 'employer',
      name: 'Admin User',
      employer_id: employerData.id
    }
  });

  console.log("Successfully created test user and employer record!");
  console.log(`Email: ${email}`);
  console.log(`Password: password123`);
}

createTestUser();
