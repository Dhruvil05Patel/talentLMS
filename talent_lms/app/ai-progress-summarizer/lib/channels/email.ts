interface SendEmailInput {
  to: string;
  learnerName: string;
  courseName: string;
  message: string;
}

export async function sendEmail(input: SendEmailInput): Promise<{ success: boolean; error?: string }> {
  if (!process.env.RESEND_API_KEY || !process.env.RESEND_FROM_EMAIL) {
    return { success: true };
  }

  try {
    const res = await fetch("https://api.resend.com/emails", {
      method: "POST",
      headers: {
        Authorization: `Bearer ${process.env.RESEND_API_KEY}`,
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        from: process.env.RESEND_FROM_EMAIL,
        to: input.to,
        subject: `A quick note on your ${input.courseName} progress`,
        html: `
          <div style="font-family: Inter, sans-serif; max-width: 560px; margin: 0 auto; padding: 32px 24px; color: #1A2B5B;">
            <p style="font-size: 15px; line-height: 1.7; margin: 0 0 24px;">${escapeHtml(input.message)}</p>
            <hr style="border: none; border-top: 1px solid #EDE8DE; margin: 24px 0;" />
            <p style="font-size: 12px; color: #9AA0B5; margin: 0;">
              You're receiving this because your employer uses TalentLMS to track your training progress.
            </p>
          </div>
        `,
      }),
    });

    if (!res.ok) {
      const error = await res.text();
      return { success: false, error };
    }

    return { success: true };
  } catch (err: unknown) {
    return { success: false, error: err instanceof Error ? err.message : "Unknown error" };
  }
}

function escapeHtml(value: string): string {
  return value
    .replaceAll("&", "&amp;")
    .replaceAll("<", "&lt;")
    .replaceAll(">", "&gt;")
    .replaceAll('"', "&quot;")
    .replaceAll("'", "&#039;");
}

