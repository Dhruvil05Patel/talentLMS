// utils/validation.ts
import { z } from "zod";

export const learnerSchema = z.object({
  user_id: z.number().int(),
  name: z.string().min(1),
  email: z.string().email(),
  avatar_url: z.string().url().nullable().optional(),
  course_id: z.number().int().optional(),
  course_name: z.string().optional(),
  group_name: z.string().optional(),
  enrolled_at: z.string().datetime().optional(),
  completion_pct: z.number().int().min(0).max(100).optional(),
  last_active: z.string().optional(),
  time_spent_mins: z.number().int().optional(),
  quiz_avg_pct: z.number().int().min(0).max(100).optional(),
  deadline: z.string().optional(),
  risk_status: z.enum(["on-track", "at-risk", "overdue", "no-data"]).optional(),
  summary: z.string().nullable().optional(),
  summary_generated_at: z.string().datetime().nullable().optional(),
  employer_id: z.number().int().optional()
});

export const getLearnersSchema = z.object({
  course_name: z.string().optional(),
  group_name: z.string().optional(),
  risk_status: z.enum(["on-track", "at-risk", "overdue", "no-data"]).optional(),
  limit: z.coerce.number().int().positive().max(100).optional(),
  offset: z.coerce.number().int().nonnegative().optional()
});

export const employerSchema = z.object({
  name: z.string().min(1),
  domain: z.string().optional()
});

export const employeeSchema = z.object({
  name: z.string().min(1),
  email: z.string().email(),
  employer_id: z.number().int()
});

export const getEmployeesSchema = z.object({
  employer_id: z.number().int()
});

export type LearnerInput = z.infer<typeof learnerSchema>;
export type GetLearnersQuery = z.infer<typeof getLearnersSchema>;
export type EmployerInput = z.infer<typeof employerSchema>;
export type EmployeeInput = z.infer<typeof employeeSchema>;
export type GetEmployeesQuery = z.infer<typeof getEmployeesSchema>;
