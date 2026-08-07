"use client";

import { ReactNode } from "react";
import { TrendingDown, TrendingUp } from "lucide-react";

interface StatsCardProps {
  title?: string;
  label?: string;
  value: number | string;
  subtitle?: string;

  icon?: ReactNode;

  color?:
    | "navy"
    | "orange"
    | "blue"
    | "green"
    | "success"
    | "amber"
    | "red"
    | "purple";

  trend?: number;
  delta?: number;

  loading?: boolean;
}

const colorMap = {
  navy: {
    border: "border-t-[#1A2B5B]",
    text: "text-[#1A2B5B]",
  },
  orange: {
    border: "border-t-[#F96A1E]",
    text: "text-[#F96A1E]",
  },
  success: {
    border: "border-t-[#15803D]",
    text: "text-[#15803D]",
  },
  blue: {
    border: "border-t-blue-500",
    text: "text-blue-600",
  },
  green: {
    border: "border-t-[#1A5438]",
    text: "text-[#1A5438]",
  },
  amber: {
    border: "border-t-amber-500",
    text: "text-amber-600",
  },
  red: {
    border: "border-t-red-500",
    text: "text-red-600",
  },
  purple: {
    border: "border-t-purple-500",
    text: "text-purple-600",
  },
};

export default function StatsCard({
  title,
  label,
  value,
  subtitle,
  icon,
  color = "navy",
  trend,
  delta,
  loading = false,
}: StatsCardProps) {
  const styles = colorMap[color];
  const displayTitle = title ?? label ?? "Metric";
  const displayTrend = trend ?? delta;

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
    <div className={`rounded-xl border border-[#EDE8DE] border-t-4 bg-white p-5 shadow-sm ${styles.border}`}>
      <div className="flex items-start justify-between">
        {icon ? <div className={styles.text}>{icon}</div> : <span />}

        {displayTrend !== undefined && (
          <div
            className={`flex items-center gap-1 rounded-full px-2 py-1 text-xs font-semibold ${
              displayTrend >= 0
                ? "bg-emerald-100 text-emerald-700"
                : "bg-red-100 text-red-700"
            }`}
          >
            {displayTrend >= 0 ? (
              <TrendingUp size={14} />
            ) : (
              <TrendingDown size={14} />
            )}

            {Math.abs(displayTrend)}%
          </div>
        )}
      </div>

      <div className="mt-2">
        <p className="text-sm font-medium text-[#5C6680]">
          {displayTitle}
        </p>

        <h2 className={`mt-2 font-[var(--font-jakarta)] text-3xl font-extrabold ${styles.text}`}>
          {value}
        </h2>

        {subtitle && (
          <p className="mt-2 text-xs font-medium text-[#9AA0B5]">
            {subtitle}
          </p>
        )}
      </div>
    </div>
  );
}
