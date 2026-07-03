import { Learner, RiskStatus } from "../types/summarizer";
import { courses } from "./courses";
import { groups } from "./groups";

const firstNames = [
  "John",
  "Emma",
  "Michael",
  "Sophia",
  "Daniel",
  "Olivia",
  "James",
  "Charlotte",
  "Noah",
  "Amelia",
  "Liam",
  "Mia",
  "Benjamin",
  "Ava",
  "Lucas",
  "Harper",
  "Henry",
  "Evelyn",
  "Alexander",
  "Ella",
];

const lastNames = [
  "Smith",
  "Johnson",
  "Brown",
  "Williams",
  "Jones",
  "Garcia",
  "Miller",
  "Davis",
  "Wilson",
  "Taylor",
  "Anderson",
  "Thomas",
  "Moore",
  "Martin",
  "Jackson",
  "White",
  "Harris",
  "Clark",
  "Lewis",
  "Walker",
];

const summaries = [
  "Learner is progressing consistently and is expected to complete the course before the deadline.",
  "Recent inactivity suggests additional encouragement may be beneficial.",
  "Quiz performance is improving steadily across recent attempts.",
  "The learner demonstrates strong engagement with course material.",
  "Course completion is behind schedule and intervention is recommended.",
  "Excellent performance with consistently high assessment scores.",
];

const random = <T,>(items: T[]): T =>
  items[Math.floor(Math.random() * items.length)];

const randomNumber = (min: number, max: number) =>
  Math.floor(Math.random() * (max - min + 1)) + min;

const getRisk = (
  progress: number,
  inactiveDays: number,
  quiz: number
): RiskStatus => {
  if (progress < 40 || inactiveDays > 14 || quiz < 45) return "overdue";
  if (progress < 70 || inactiveDays > 7 || quiz < 65) return "at-risk";
  return "on-track";
};

const avatar = (name: string) =>
  `https://ui-avatars.com/api/?name=${encodeURIComponent(
    name
  )}&background=2563eb&color=fff`;

export const mockLearners: Learner[] = Array.from(
  { length: 60 },
  (_, index) => {
    const first = random(firstNames);
    const last = random(lastNames);
    const name = `${first} ${last}`;

    const progress = randomNumber(10, 100);
    const quiz = randomNumber(35, 100);
    const inactiveDays = randomNumber(0, 20);

    const risk = getRisk(progress, inactiveDays, quiz);

    return {
      id: index + 1,

      name,

      email: `${first.toLowerCase()}.${last.toLowerCase()}${
        index + 1
      }@company.com`,

      avatar: avatar(name),

      courseId: (index % courses.length) + 1,

      courseName: courses[index % courses.length],

      groupId: (index % groups.length) + 1,

      groupName: groups[index % groups.length],

      enrolledOn: "2026-01-15",

      deadline: "2026-08-30",

      completion: progress,

      quizAverage: quiz,

      timeSpent: randomNumber(60, 1600),

      certificatesEarned: randomNumber(0, 5),

      lastActive: `${inactiveDays} day(s) ago`,

      inactiveDays,

      risk,

      summary: random(summaries),
    };
  }
);

export default mockLearners;