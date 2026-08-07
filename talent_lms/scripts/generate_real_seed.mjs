import fs from 'fs';
import { faker } from '@faker-js/faker';

const NUM_EMPLOYERS = 100;
const NUM_LEARNERS = 1000;

// Escape single quotes for SQL
const escapeSQL = (str) => {
  if (str === null || str === undefined) return 'NULL';
  return `'${str.replace(/'/g, "''")}'`;
};

const main = () => {
  let sql = `-- Clear existing data and restart ID sequences\n`;
  sql += `TRUNCATE TABLE learners, employers RESTART IDENTITY CASCADE;\n\n`;

  // 1. Generate Employers
  sql += `-- Insert ${NUM_EMPLOYERS} Employers\n`;
  sql += `INSERT INTO employers (id, name, email, domain) VALUES\n`;

  const employers = [];
  for (let i = 1; i <= NUM_EMPLOYERS; i++) {
    const companyName = faker.company.name();
    const domain = faker.internet.domainName();
    const email = `contact@${domain}`;
    
    employers.push(`  (${i}, ${escapeSQL(companyName)}, ${escapeSQL(email)}, ${escapeSQL(domain)})`);
  }
  sql += employers.join(',\n') + ';\n\n';

  // 2. Generate Learners
  sql += `-- Insert ${NUM_LEARNERS} Learners\n`;
  sql += `INSERT INTO learners (
  user_id, name, email, avatar_url, course_id, course_name, group_name,
  enrolled_at, completion_pct, last_active, time_spent_mins, quiz_avg_pct,
  deadline, risk_status, summary, employer_id
) VALUES\n`;

  const courses = [
    { id: 1, name: 'Cybersecurity Awareness' },
    { id: 2, name: 'Workplace Ethics & Code of Conduct' },
    { id: 3, name: 'Data Privacy and GDPR' },
    { id: 4, name: 'Leadership & Management' },
    { id: 5, name: 'Diversity and Inclusion in the Workplace' },
    { id: 6, name: 'Advanced Sales Techniques' },
    { id: 7, name: 'Cloud Computing Fundamentals' }
  ];

  const groups = [
    'Engineering', 'Marketing', 'Sales', 'Human Resources', 'Operations', 'Finance', 'Customer Support'
  ];

  const riskStatuses = ['Low', 'Low', 'Low', 'Medium', 'Medium', 'High']; // Weighted towards Low/Medium
  const activeTimes = ['Today', 'Yesterday', '2 days ago', '3 days ago', '1 week ago', '2 weeks ago', '1 month ago'];

  const learners = [];
  for (let i = 1; i <= NUM_LEARNERS; i++) {
    const firstName = faker.person.firstName();
    const lastName = faker.person.lastName();
    const email = faker.internet.email({ firstName, lastName }).toLowerCase();
    
    // Some logic for realistic data
    const completionPct = faker.number.int({ min: 0, max: 100 });
    const isCompleted = completionPct === 100;
    
    const course = faker.helpers.arrayElement(courses);
    const groupName = faker.helpers.arrayElement(groups);
    
    const pastDate = faker.date.past({ years: 1 });
    const enrolledAt = pastDate.toISOString().replace('T', ' ').substring(0, 19);
    
    // Deadline in future or slightly past
    const deadlineDate = new Date(pastDate);
    deadlineDate.setDate(deadlineDate.getDate() + faker.number.int({ min: 30, max: 90 }));
    const deadline = deadlineDate.toISOString().substring(0, 10);
    
    const lastActive = faker.helpers.arrayElement(activeTimes);
    const timeSpentMins = faker.number.int({ min: 10, max: 2000 });
    const quizAvgPct = isCompleted ? faker.number.int({ min: 70, max: 100 }) : faker.number.int({ min: 40, max: 100 });
    
    const riskStatus = faker.helpers.arrayElement(riskStatuses);
    
    const summary = `${firstName} ${lastName} is currently enrolled in ${course.name}. ${completionPct}% complete. Performance is ${quizAvgPct}% on average for quizzes. Risk level is evaluated as ${riskStatus}.`;
    
    const employerId = faker.number.int({ min: 1, max: NUM_EMPLOYERS });

    learners.push(`  (
    ${i}, ${escapeSQL(`${firstName} ${lastName}`)}, ${escapeSQL(email)}, ${escapeSQL(faker.image.avatar())},
    ${course.id}, ${escapeSQL(course.name)}, ${escapeSQL(groupName)},
    '${enrolledAt}', ${completionPct}, ${escapeSQL(lastActive)}, ${timeSpentMins}, ${quizAvgPct},
    '${deadline}', ${escapeSQL(riskStatus)}, ${escapeSQL(summary)}, ${employerId}
  )`);
  }
  
  sql += learners.join(',\n') + ';\n';

  fs.writeFileSync('seed.sql', sql);
  console.log('Successfully generated seed.sql with realistic data.');
};

main();
