"use client";

import { ReactNode } from "react";
import { TrendingUp, TrendingDown } from "lucide-react";

interface StatsCardProps {
  title: string;
  value: number | string;
  subtitle?: string;

  icon: ReactNode;

  color?:
    | "blue"
    | "green"
    | "amber"
    | "red"
    | "purple";

  trend?: number;

  loading?: boolean;
}

const colorMap = {
  blue: {
    bg: "bg-blue-100",
    text: "text-blue-600",
  },
  green: {
    bg: "bg-emerald-100",
    text: "text-emerald-600",
  },
  amber: {
    bg: "bg-amber-100",
    text: "text-amber-600",
  },
  red: {
    bg: "bg-red-100",
    text: "text-red-600",
  },
  purple: {
    bg: "bg-purple-100",
    text: "text-purple-600",
  },
};

export default function StatsCard({
  title,
  value,
  subtitle,
  icon,
  color = "blue",
  trend,
  loading = false,
}: StatsCardProps) {
  const styles = colorMap[color];

  if (loading) {
    return (
      <div className="animate-pulse rounded-2xl border border-gray-200 bg-white p-6">
        <div className="mb-5 flex items-center justify-between">
          <div className="h-10 w-10 rounded-xl bg-gray-200" />
          <div className="h-4 w-16 rounded bg-gray-200" />
        </div>

        <div className="mb-3 h-8 w-24 rounded bg-gray-200" />

        <div className="h-4 w-32 rounded bg-gray-200" />
      </div>
    );
  }

  return (
    <div className="rounded-2xl border border-gray-200 bg-white p-6 shadow-sm transition-all duration-200 hover:-translate-y-1 hover:shadow-md">
      <div className="flex items-start justify-between">
        <div
          className={`flex h-12 w-12 items-center justify-center rounded-xl ${styles.bg}`}
        >
          <div className={styles.text}>{icon}</div>
        </div>

        {trend !== undefined && (
          <div
            className={`flex items-center gap-1 rounded-full px-2 py-1 text-xs font-semibold ${
              trend >= 0
                ? "bg-emerald-100 text-emerald-700"
                : "bg-red-100 text-red-700"
            }`}
          >
            {trend >= 0 ? (
              <TrendingUp size={14} />
            ) : (
              <TrendingDown size={14} />
            )}

            {Math.abs(trend)}%
          </div>
        )}
      </div>

      <div className="mt-5">
        <p className="text-sm font-medium text-gray-500">
          {title}
        </p>

        <h2 className="mt-2 text-3xl font-bold text-gray-900">
          {value}
        </h2>

        {subtitle && (
          <p className="mt-2 text-sm text-gray-500">
            {subtitle}
          </p>
        )}
      </div>
    </div>
  );
}