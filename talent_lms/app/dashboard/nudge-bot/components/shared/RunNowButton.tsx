"use client";

import { useEffect, useRef, useState } from "react";
import {
  ChevronDown,
  Eye,
  Zap,
} from "lucide-react";

interface Props {
  loading?: boolean;

  onRunAll: () => void;

  onDryRun: () => void;
}

export default function RunNowButton({
  loading = false,
  onRunAll,
  onDryRun,
}: Props) {
  const [open, setOpen] = useState(false);

  const ref =
    useRef<HTMLDivElement>(null);

  useEffect(() => {
    function handler(
      event: MouseEvent
    ) {
      if (
        ref.current &&
        !ref.current.contains(
          event.target as Node
        )
      ) {
        setOpen(false);
      }
    }

    window.addEventListener(
      "click",
      handler
    );

    return () =>
      window.removeEventListener(
        "click",
        handler
      );
  }, []);

  return (
    <div
      ref={ref}
      className="relative"
    >
      <button
        disabled={loading}
        onClick={() =>
          setOpen(!open)
        }
        className="inline-flex items-center gap-2 rounded-full bg-[#1A5438] px-6 py-3 font-[var(--font-jakarta)] text-sm font-bold text-white shadow-sm transition hover:bg-[#123d29] disabled:cursor-not-allowed disabled:opacity-60"
      >
        {loading
          ? "Running..."
          : "Run Now"}

        <ChevronDown
          size={16}
        />
      </button>

      {open && (
        <div className="absolute right-0 z-30 mt-3 w-72 overflow-hidden rounded-xl border border-[#EDE8DE] bg-white shadow-xl">
          <button
            onClick={() => {
              setOpen(false);

              onRunAll();
            }}
            className="flex w-full items-start gap-3 px-5 py-4 text-left transition hover:bg-[#FAF8F3]"
          >
            <Zap
              size={18}
              className="mt-1 text-[#F96A1E]"
            />

            <div>
              <p className="font-[var(--font-jakarta)] text-sm font-bold text-[#1A2B5B]">
                Run All Active Rules
              </p>

              <p className="mt-1 text-xs leading-5 text-[#5C6680]">
                Evaluate every enabled
                rule and immediately
                send nudges.
              </p>
            </div>
          </button>

          <div className="border-t border-[#EDE8DE]" />

          <button
            onClick={() => {
              setOpen(false);

              onDryRun();
            }}
            className="flex w-full items-start gap-3 px-5 py-4 text-left transition hover:bg-[#FAF8F3]"
          >
            <Eye
              size={18}
              className="mt-1 text-[#1A5438]"
            />

            <div>
              <p className="font-[var(--font-jakarta)] text-sm font-bold text-[#1A2B5B]">
                Preview Only (Dry Run)
              </p>

              <p className="mt-1 text-xs leading-5 text-[#5C6680]">
                Show learners that
                qualify without sending
                any nudges.
              </p>
            </div>
          </button>
        </div>
      )}
    </div>
  );
}
