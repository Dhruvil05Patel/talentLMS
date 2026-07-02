import React from 'react';
import Link from 'next/link';

interface CTAProps {
  Button: string;
  variant?: 'primary' | 'secondary';
}

export default function CTA({ Button, variant = 'primary' }: CTAProps) {
  const baseClasses = "inline-flex items-center justify-center rounded-lg font-semibold transition-all duration-200 focus:outline-none focus:ring-2 focus:ring-offset-2";

  const variantClasses = {
    primary: "bg-[#ff6b35] text-white hover:bg-[#e55a2e] px-6 py-3 text-lg shadow-lg hover:shadow-xl transform hover:-translate-y-0.5",
    secondary: "bg-transparent text-[#ff6b35] border-2 border-[#ff6b35] hover:bg-[#ff6b35] hover:text-white px-6 py-2"
  };

  return (
    <Link
      href="/get-started"
      className={`${baseClasses} ${variantClasses[variant]}`}
    >
      {Button}
    </Link>
  );
}