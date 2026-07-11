"use client";

import { useEffect, useRef, useState } from "react";
import {
  Play,
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
        className="inline-flex items-center gap-2 rounded-xl bg-blue-600 px-5 py-3 font-medium text-white shadow transition hover:bg-blue-700 disabled:cursor-not-allowed disabled:opacity-60"
      >
        <Play size={17} />

        {loading
          ? "Running..."
          : "Run Now"}

        <ChevronDown
          size={16}
        />
      </button>

      {open && (
        <div className="absolute right-0 mt-3 w-72 overflow-hidden rounded-xl border border-gray-200 bg-white shadow-xl">
          <button
            onClick={() => {
              setOpen(false);

              onRunAll();
            }}
            className="flex w-full items-start gap-3 px-5 py-4 text-left transition hover:bg-gray-50"
          >
            <Zap
              size={18}
              className="mt-1 text-blue-600"
            />

            <div>
              <p className="font-medium">
                Run All Active Rules
              </p>

              <p className="mt-1 text-sm text-gray-500">
                Evaluate every enabled
                rule and immediately
                send nudges.
              </p>
            </div>
          </button>

          <div className="border-t" />

          <button
            onClick={() => {
              setOpen(false);

              onDryRun();
            }}
            className="flex w-full items-start gap-3 px-5 py-4 text-left transition hover:bg-gray-50"
          >
            <Eye
              size={18}
              className="mt-1 text-emerald-600"
            />

            <div>
              <p className="font-medium">
                Preview Only
              </p>

              <p className="mt-1 text-sm text-gray-500">
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