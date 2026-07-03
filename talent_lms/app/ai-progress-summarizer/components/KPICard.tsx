"use client";

import { ReactNode } from "react";

interface KPICardProps {
  title: string;
  value: number | string;
  icon: ReactNode;
  color: string;
}

export default function KPICard({
  title,
  value,
  icon,
  color,
}: KPICardProps) {
  return (
    <div className="rounded-2xl border border-gray-200 bg-white p-6 shadow-sm transition-all hover:shadow-md">
      <div className="flex items-center justify-between">
        <div>
          <p className="text-sm text-gray-500">
            {title}
          </p>

          <h2 className="mt-2 text-3xl font-bold text-gray-900">
            {value}
          </h2>
        </div>

        <div
          className={`flex h-12 w-12 items-center justify-center rounded-xl ${color}`}
        >
          {icon}
        </div>
      </div>
    </div>
  );
}