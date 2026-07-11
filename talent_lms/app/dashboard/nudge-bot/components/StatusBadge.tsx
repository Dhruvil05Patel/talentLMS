"use client";

import {
  CheckCircle2,
  Clock3,
  AlertCircle,
  PauseCircle,
} from "lucide-react";

interface Props {
  status:
    | "sent"
    | "failed"
    | "queued"
    | "skipped"
    | "active"
    | "inactive";
}

export default function StatusBadge({
  status,
}: Props) {
  switch (status) {
    case "sent":
      return (
        <Badge
          color="emerald"
          icon={<CheckCircle2 size={14} />}
          label="Sent"
        />
      );

    case "failed":
      return (
        <Badge
          color="red"
          icon={<AlertCircle size={14} />}
          label="Failed"
        />
      );

    case "queued":
      return (
        <Badge
          color="blue"
          icon={<Clock3 size={14} />}
          label="Queued"
        />
      );

    case "skipped":
      return (
        <Badge
          color="amber"
          icon={<PauseCircle size={14} />}
          label="Skipped"
        />
      );

    case "active":
      return (
        <Badge
          color="emerald"
          icon={<CheckCircle2 size={14} />}
          label="Active"
        />
      );

    default:
      return (
        <Badge
          color="gray"
          icon={<PauseCircle size={14} />}
          label="Inactive"
        />
      );
  }
}

function Badge({
  color,
  icon,
  label,
}: {
  color: string;
  icon: React.ReactNode;
  label: string;
}) {
  const colors = {
    emerald:
      "bg-emerald-100 text-emerald-700 border-emerald-200",

    blue:
      "bg-blue-100 text-blue-700 border-blue-200",

    red:
      "bg-red-100 text-red-700 border-red-200",

    amber:
      "bg-amber-100 text-amber-700 border-amber-200",

    gray:
      "bg-gray-100 text-gray-700 border-gray-200",
  };

  return (
    <span
      className={`inline-flex items-center gap-2 rounded-full border px-3 py-1 text-xs font-semibold ${colors[color as keyof typeof colors]}`}
    >
      {icon}

      {label}
    </span>
  );
}