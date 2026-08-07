'use client';
import Link from "next/link";
import { FormEvent } from "react";
import { useState } from "react";

export default function SignupPage() {
  const [firstName, setFirstName] = useState("");
  const [lastName, setLastName] = useState("");
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [confirmPassword, setConfirmPassword] = useState("");

  const handleSubmit = async (e: FormEvent) => {
    e.preventDefault();
    alert('Form submitted');
  };

  return (
    <section style={{
      background: 'rgba(0, 0, 0, 0.25)',
      backdropFilter: 'blur(10px)',
      height: '100vh',
      display: 'flex',
      justifyContent: 'center',
      alignItems: 'center'
    }}>
      <div style={{
        background: 'white',
        padding: '2rem',
        borderRadius: '1rem',
        boxShadow: '0 10px 25px rgba(0,0,0,0.2)'
      }}>
        <h2 style={{ textAlign: 'center' }}>Create Your Account</h2>
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

          <button style={{
            background: '#007a55',
            color: 'white',
            padding: '0.75rem 1.5rem',
            borderRadius: '0.5rem',
            marginTop: '1rem',
            width: '100%',
            cursor: 'pointer',
            border: 'none'
          }}>Create Account</button>
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
