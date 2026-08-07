"use client";

import Link from "next/link";
import { useRouter } from "next/navigation";
import { useState } from "react";
import { signUp } from "@/lib/auth";

export default function SignupPage() {
  const router = useRouter();
  const [firstName, setFirstName] = useState("");
  const [lastName, setLastName] = useState("");
  const [companyName, setCompanyName] = useState("");
  const [domain, setDomain] = useState("");
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [confirmPassword, setConfirmPassword] = useState("");

  const [error, setError] = useState<string | null>(null);
  const [success, setSuccess] = useState<string | null>(null);
  const [loading, setLoading] = useState(false);

  const passwordRules = {
    minLength: 8,
    upper: /[A-Z]/,
    lower: /[a-z]/,
    number: /[0-9]/,
    special: /[^A-Za-z0-9]/
  };

  const passwordScore = (() => {
    const p = password;
    return {
      minLength: p.length >= passwordRules.minLength,
      upper: passwordRules.upper.test(p),
      lower: passwordRules.lower.test(p),
      number: passwordRules.number.test(p),
      special: passwordRules.special.test(p),
      match: p.length > 0 && confirmPassword.length > 0 && p === confirmPassword
    };
  })();

  const validateClient = () => {
    if (!firstName.trim()) return 'First name is required.';
    if (!lastName.trim()) return 'Last name is required.';
    if (!companyName.trim()) return 'Company name is required.';
    if (!email.trim()) return 'Email is required.';
    if (!password) return 'Password is required.';
    if (!confirmPassword) return 'Confirm password is required.';

    if (!passwordScore.minLength) return 'Password must be at least 8 characters.';
    if (!passwordScore.upper) return 'Password must include at least 1 uppercase letter.';
    if (!passwordScore.lower) return 'Password must include at least 1 lowercase letter.';
    if (!passwordScore.number) return 'Password must include at least 1 number.';
    if (!passwordScore.special) return 'Password must include at least 1 special character.';
    if (!passwordScore.match) return 'Passwords do not match.';

    return null;
  };

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setError(null);
    setSuccess(null);

    const validationMessage = validateClient();
    if (validationMessage) {
      setError(validationMessage);
      return;
    }

    setLoading(true);
    try {
      const name = `${firstName.trim()} ${lastName.trim()}`;
      const data = await signUp({
        email,
        password,
        name,
        companyName: companyName.trim(),
        domain: domain.trim() ? domain.trim() : undefined,
      });

      if (data.session?.access_token) {
        setSuccess('Account created. Redirecting...');
        router.push("/ai-progress-summarizer");
      } else {
        setSuccess('Account created. Check your email if confirmation is enabled, then sign in.');
      }
    } catch (err) {
      setError(err instanceof Error ? err.message : 'Signup failed.');
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
      alignItems: 'center',
      padding: '2rem 1rem'
    }}>
      <div style={{
        background: 'white',
        padding: '2rem',
        borderRadius: '1rem',
        boxShadow: '0 10px 25px rgba(0,0,0,0.2)',
        width: 'min(100%, 460px)'
      }}>
        <h2 style={{ textAlign: 'center' }}>Create Your Account</h2>

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

        {success ? (
          <div
            style={{
              background: '#dcfce7',
              color: '#166534',
              padding: '0.75rem 1rem',
              borderRadius: '0.75rem',
              marginBottom: '1rem',
              fontSize: '0.95rem'
            }}
            role="status"
          >
            {success}
          </div>
        ) : null}
        <form onSubmit={handleSubmit}>
          <div style={{ marginBottom: '1rem' }}>
            <label style={{ display: 'block', marginBottom: '0.5rem' }}>First Name</label>
            <input
              type="text"
              value={firstName}
              onChange={e => setFirstName(e.target.value)}
              required
              style={{ width: '100%' }}
              className="rounded border p-2 shadow"
            />
          </div>

          <div style={{ marginBottom: '1rem' }}>
            <label style={{ display: 'block', marginBottom: '0.5rem' }}>Last Name</label>
            <input
              type="text"
              value={lastName}
              onChange={e => setLastName(e.target.value)}
              required
              style={{ width: '100%' }}
              className="rounded border p-2 shadow"
            />
          </div>

          <div style={{ marginBottom: '1rem' }}>
            <label style={{ display: 'block', marginBottom: '0.5rem' }}>Company Name</label>
            <input
              type="text"
              value={companyName}
              onChange={e => setCompanyName(e.target.value)}
              required
              style={{ width: '100%' }}
              className="rounded border p-2 shadow"
            />
          </div>
          <div style={{ marginBottom: '1rem' }}>
            <label style={{ display: 'block', marginBottom: '0.5rem' }}>Company Domain</label>
            <input
              type="text"
              value={domain}
              onChange={e => setDomain(e.target.value)}
              placeholder="example.com"
              style={{ width: '100%' }}
              className="rounded border p-2 shadow"
            />
          </div>

          <div style={{ marginBottom: '1.5rem' }}>
            <label style={{ display: 'block', marginBottom: '0.5rem' }}>Email</label>
            <input
              type="email"
              value={email}
              onChange={e => setEmail(e.target.value)}
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
              onChange={e => setPassword(e.target.value)}
              required
              style={{ width: '100%' }}
              className="rounded border p-2 shadow"
            />
          </div>

          <div style={{ marginBottom: '1rem' }}>
            <label style={{ display: 'block', marginBottom: '0.5rem' }}>Confirm Password</label>
            <input
              type="password"
              value={confirmPassword}
              onChange={e => setConfirmPassword(e.target.value)}
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
            {loading ? 'Creating Account...' : 'Create Account'}
          </button>
        </form>

        <div style={{
          marginTop: '2rem',
          textAlign: 'center'
        }}>
          <Link
            href="/login"
            className="text-default"
          >
            Already Have an Account? Sign In
          </Link>
        </div>
      </div>
    </section>
  );
}
