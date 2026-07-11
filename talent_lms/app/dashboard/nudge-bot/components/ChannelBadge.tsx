"use client";

import {
  Mail,
  MessageSquare,
  Smartphone,
  Bell,
} from "lucide-react";

import { NudgeChannel } from "../types/nudge";

interface Props {
  channel: NudgeChannel;
}

const styles = {
  email: {
    icon: Mail,
    label: "Email",
    className:
      "bg-blue-100 text-blue-700 border-blue-200",
  },

  slack: {
    icon: MessageSquare,
    label: "Slack",
    className:
      "bg-violet-100 text-violet-700 border-violet-200",
  },

  whatsapp: {
    icon: Smartphone,
    label: "WhatsApp",
    className:
      "bg-green-100 text-green-700 border-green-200",
  },

  "in-portal": {
    icon: Bell,
    label: "In Portal",
    className:
      "bg-amber-100 text-amber-700 border-amber-200",
  },
};

export default function ChannelBadge({
  channel,
}: Props) {
  const config = styles[channel];

  const Icon = config.icon;

  return (
    <span
      className={`inline-flex items-center gap-2 rounded-full border px-3 py-1 text-xs font-semibold ${config.className}`}
    >
      <Icon size={14} />

      {config.label}
    </span>
  );
}