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
  compact?: boolean;
}

const styles = {
  email: {
    icon: Mail,
    label: "Email",
    className:
      "bg-blue-50 text-blue-600 border-blue-200",
  },

  slack: {
    icon: MessageSquare,
    label: "Slack",
    className:
      "bg-[#4A154B]/10 text-[#4A154B] border-[#4A154B]/20",
  },

  whatsapp: {
    icon: Smartphone,
    label: "WhatsApp",
    className:
      "bg-[#25D366]/10 text-[#15803D] border-[#25D366]/30",
  },

  "in-portal": {
    icon: Bell,
    label: "In Portal",
    className:
      "bg-[#FFF3EC] text-[#F96A1E] border-[#F96A1E]/20",
  },

  "in-app": {
    icon: Bell,
    label: "In App",
    className:
      "bg-[#FFF3EC] text-[#F96A1E] border-[#F96A1E]/20",
  },
};

export default function ChannelBadge({
  channel,
  compact = false,
}: Props) {
  const config = styles[channel];

  const Icon = config.icon;

  return (
    <span
      className={`inline-flex items-center gap-2 rounded-md border text-xs font-semibold ${compact ? "px-2 py-1" : "px-3 py-1"} ${config.className}`}
    >
      <Icon size={14} />

      {config.label}
    </span>
  );
}
