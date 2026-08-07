"use client";

import Link from "next/link";
import { useRouter } from "next/navigation";
import { useState } from "react";
import { signIn } from "@/lib/auth";

export default function LoginPage() {
  const router = useRouter();
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [error, setError] = useState<string | null>(null);
  const [loading, setLoading] = useState(false);

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setError(null);
    setLoading(true);

    try {
      await signIn(email, password);
      router.push("/ai-progress-summarizer");
    } catch (err) {
      setError(err instanceof Error ? err.message : "Sign in failed.");
    } finally {
      setLoading(false);
    }
  };

  return (
    <section style={{
      background: 'rgba(255, 255, 255, 0.8)',
      backdropFilter: 'blur(12px)',
      minHeight: '100vh',
      display: 'flex',
      justifyContent: 'center',
      alignItems: 'center'
    }}>
      <div style={{
        background: 'white',
        padding: '2rem',
        borderRadius: '1rem',
        boxShadow: '0 10px 25px rgba(0,0,0,0.2)',
        width: 'min(100%, 420px)'
      }}>
        <h2 style={{ textAlign: 'center' }}>Sign In</h2>

        {error ? (
          <div
            style={{
              background: '#fee2e2',
              color: '#991b1b',
              padding: '0.75rem 1rem',
              borderRadius: '0.75rem',
              marginBottom: '1rem',
              fontSize: '0.95rem'
            }}
            role="alert"
          >
            {error}
          </div>
        ) : null}

        <form onSubmit={handleSubmit}>
          <div style={{ marginBottom: '1.5rem' }}>
            <label style={{ display: 'block', marginBottom: '0.5rem' }}>Email</label>
            <input
              type="email"
              value={email}
              onChange={(e) => setEmail(e.target.value)}
              required
              style={{ width: '100%' }}
              className="rounded border p-2 shadow"
            />
          </div>

          <div style={{ marginBottom: '1rem' }}>
            <label style={{ display: 'block', marginBottom: '0.5rem' }}>Password</label>
            <input
              type="password"
              value={password}
              onChange={(e) => setPassword(e.target.value)}
              required
              style={{ width: '100%' }}
              className="rounded border p-2 shadow"
            />
          </div>

          <button
            disabled={loading}
            style={{
              background: '#007a55',
              color: 'white',
              padding: '0.75rem 1.5rem',
              borderRadius: '0.5rem',
              marginTop: '1rem',
              width: '100%',
              cursor: loading ? 'not-allowed' : 'pointer',
              border: 'none',
              opacity: loading ? 0.7 : 1
            }}
          >
            {loading ? 'Signing In...' : 'Sign In'}
          </button>
        </form>

        <div style={{
          marginTop: '2rem',
          textAlign: 'center'
        }}>
          <Link
            href="/forgot-password"
            style={{
              color: '#555',
              textDecoration: 'underline',
              cursor: 'pointer'
            }}
          >
            Forgot Password
          </Link>
          <div style={{ marginTop: '1rem' }}>
            <Link
              href="/login/signup"
              style={{
                color: '#007a55',
                textDecoration: 'none',
                fontWeight: '500'
              }}
            >
              New User? Sign Up
            </Link>
          </div>
        </div>
      </div>
    </section>
  );
}
