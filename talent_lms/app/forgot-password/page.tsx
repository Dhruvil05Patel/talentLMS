"use client";

import Link from "next/link";
import { FormEvent, useState } from "react";
import { requestPasswordReset } from "@/lib/auth";

export default function ForgotPasswordPage() {
  const [email, setEmail] = useState("");
  const [error, setError] = useState<string | null>(null);
  const [success, setSuccess] = useState<string | null>(null);
  const [loading, setLoading] = useState(false);

  const handleSubmit = async (event: FormEvent) => {
    event.preventDefault();
    setError(null);
    setSuccess(null);
    setLoading(true);

    try {
      await requestPasswordReset(email);
      setSuccess("Password reset email sent if the account exists.");
    } catch (err) {
      setError(err instanceof Error ? err.message : "Failed to send reset email.");
    } finally {
      setLoading(false);
    }
  };

  return (
    <section className="flex min-h-screen items-center justify-center bg-white/80 px-4 py-8 backdrop-blur">
      <div className="w-full max-w-[420px] rounded-2xl bg-white p-8 shadow-2xl">
        <h2 className="text-center text-2xl font-semibold text-gray-900">Reset Password</h2>

        {error ? (
          <div className="mt-5 rounded-xl bg-red-100 px-4 py-3 text-sm text-red-800" role="alert">
            {error}
          </div>
        ) : null}

        {success ? (
          <div className="mt-5 rounded-xl bg-green-100 px-4 py-3 text-sm text-green-800" role="status">
            {success}
          </div>
        ) : null}

        <form onSubmit={handleSubmit} className="mt-6 space-y-5">
          <div>
            <label className="mb-2 block text-sm font-medium text-gray-800">Email</label>
            <input
              type="email"
              value={email}
              onChange={(event) => setEmail(event.target.value)}
              required
              className="w-full rounded border border-gray-300 p-2 shadow-sm"
            />
          </div>

          <button
            type="submit"
            disabled={loading}
            className="w-full rounded-lg bg-[#007a55] px-6 py-3 font-semibold text-white disabled:cursor-not-allowed disabled:opacity-70"
          >
            {loading ? "Sending..." : "Send Reset Email"}
          </button>
        </form>

        <div className="mt-6 text-center">
          <Link href="/login" className="font-medium text-[#007a55]">
            Back to Sign In
          </Link>
        </div>
      </div>
    </section>
  );
}
