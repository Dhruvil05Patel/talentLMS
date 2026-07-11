"use client";

import { ReactNode } from "react";

interface Props {
  title: string;
  subtitle?: string;
  action?: ReactNode;
  children: ReactNode;
}

export default function SectionCard({
  title,
  subtitle,
  action,
  children,
}: Props) {
  return (
    <div className="rounded-2xl border border-gray-200 bg-white shadow-sm">
      <div className="flex items-center justify-between border-b border-gray-100 p-6">
        <div>
          <h2 className="text-xl font-semibold text-gray-900">
            {title}
          </h2>

          {subtitle && (
            <p className="mt-1 text-sm text-gray-500">
              {subtitle}
            </p>
          )}
        </div>

        {action}
      </div>

      <div className="p-6">{children}</div>
    </div>
  );
}