import { createClient } from '@supabase/supabase-js';
import fs from 'fs';
import path from 'path';
import { faker } from '@faker-js/faker';

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

async function seedAdminLearners() {
  const EMPLOYER_ID = 9999;
  const NUM_LEARNERS = 15;

  const courses = [
    { id: 1, name: 'Cybersecurity Awareness' },
    { id: 2, name: 'Workplace Ethics & Code of Conduct' },
    { id: 3, name: 'Data Privacy and GDPR' },
    { id: 4, name: 'Leadership & Management' },
    { id: 5, name: 'Diversity and Inclusion in the Workplace' },
    { id: 6, name: 'Advanced Sales Techniques' },
    { id: 7, name: 'Cloud Computing Fundamentals' }
  ];

  const groups = ['Engineering', 'Marketing', 'Sales', 'Human Resources', 'Operations', 'Finance', 'Customer Support'];
  const riskStatuses = ['Low', 'Low', 'Low', 'Medium', 'Medium', 'High'];
  const activeTimes = ['Today', 'Yesterday', '2 days ago', '3 days ago', '1 week ago', '2 weeks ago', '1 month ago'];

  const learners = [];
  for (let i = 1; i <= NUM_LEARNERS; i++) {
    const firstName = faker.person.firstName();
    const lastName = faker.person.lastName();
    const email = faker.internet.email({ firstName, lastName }).toLowerCase();
    
    const completionPct = faker.number.int({ min: 0, max: 100 });
    const isCompleted = completionPct === 100;
    
    const course = faker.helpers.arrayElement(courses);
    const groupName = faker.helpers.arrayElement(groups);
    
    const pastDate = faker.date.past({ years: 1 });
    const enrolledAt = pastDate.toISOString().replace('T', ' ').substring(0, 19);
    
    const deadlineDate = new Date(pastDate);
    deadlineDate.setDate(deadlineDate.getDate() + faker.number.int({ min: 30, max: 90 }));
    const deadline = deadlineDate.toISOString().substring(0, 10);
    
    const lastActive = faker.helpers.arrayElement(activeTimes);
    const timeSpentMins = faker.number.int({ min: 10, max: 2000 });
    const quizAvgPct = isCompleted ? faker.number.int({ min: 70, max: 100 }) : faker.number.int({ min: 40, max: 100 });
    const riskStatus = faker.helpers.arrayElement(riskStatuses);
    
    const summary = `${firstName} ${lastName} is currently enrolled in ${course.name}. ${completionPct}% complete. Performance is ${quizAvgPct}% on average for quizzes. Risk level is evaluated as ${riskStatus}.`;
    
    learners.push({
      user_id: 10000 + i, // Start at 10001 to avoid sequence conflicts with seed data 1-1000
      name: `${firstName} ${lastName}`,
      email: email,
      avatar_url: faker.image.avatar(),
      course_id: course.id,
      course_name: course.name,
      group_name: groupName,
      enrolled_at: enrolledAt,
      completion_pct: completionPct,
      last_active: lastActive,
      time_spent_mins: timeSpentMins,
      quiz_avg_pct: quizAvgPct,
      deadline: deadline,
      risk_status: riskStatus,
      summary: summary,
      employer_id: EMPLOYER_ID
    });
  }

  const { data, error } = await supabase.from('learners').insert(learners);

  if (error) {
    console.error("Error inserting learners:", error);
  } else {
    console.log(`Successfully added ${NUM_LEARNERS} learners to employer ID ${EMPLOYER_ID}!`);
  }
}

seedAdminLearners();
