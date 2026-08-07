"use client";

import { AlertTriangle, CheckCircle2, Clock3 } from "lucide-react";
import { RiskStatus } from "../types/summarizer";

interface RiskBadgeProps {
  risk: RiskStatus;
}

export default function RiskBadge({
  risk,
}: RiskBadgeProps) {
  switch (risk) {
    case "on-track":
      return (
        <span className="inline-flex items-center gap-1 rounded-full border border-emerald-200 bg-emerald-100 px-3 py-1 text-xs font-semibold text-emerald-700 whitespace-nowrap">
          <CheckCircle2 size={14} />
          On Track
        </span>
      );

    case "at-risk":
      return (
        <span className="inline-flex items-center gap-1 rounded-full border border-amber-200 bg-amber-100 px-3 py-1 text-xs font-semibold text-amber-700 whitespace-nowrap">
          <AlertTriangle size={14} />
          At Risk
        </span>
      );

    case "overdue":
      return (
        <span className="inline-flex items-center gap-1 rounded-full border border-red-200 bg-red-100 px-3 py-1 text-xs font-semibold text-red-700 whitespace-nowrap">
          <Clock3 size={14} />
          Overdue
        </span>
      );
  }
}