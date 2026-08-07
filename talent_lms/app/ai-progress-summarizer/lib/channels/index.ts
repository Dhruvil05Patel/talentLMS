import { sendEmail } from "./email";

export async function sendNudge(input: {
  channel: string;
  to: string;
  learnerName: string;
  courseName: string;
  message: string;
}): Promise<{ success: boolean; error?: string }> {
  if (input.channel === "email") {
    return sendEmail(input);
  }

  if (input.channel === "in-portal") {
    return { success: true };
  }

  return { success: false, error: `${input.channel} delivery is not connected yet` };
}

