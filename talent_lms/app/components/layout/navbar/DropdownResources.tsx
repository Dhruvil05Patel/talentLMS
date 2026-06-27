"use client";

import Link from "next/link";
import { resourcesData } from "./navData";

export default function DropdownResources({ onMouseEnter, onMouseLeave }) {
  // Fallback icon map based on the order of your items in navData.ts
  const fallbackIcons = ["📝", "💻", "🎙️", "📚", "🔍", "❓", "📊"];

  // Helper function to dynamically style the badges to match the reference image
  const getBadgeStyles = (badge) => {
    if (badge.toLowerCase().includes("episode")) {
      return "text-[#E14817] text-[11px] font-bold flex items-center gap-1";
    }
    if (badge.toLowerCase().includes("report")) {
      return "text-green-600 text-[11px] font-bold flex items-center gap-1";
    }
    return "text-gray-500 text-[11px] font-bold";
  };

  return (
    <div
      className="absolute top-full left-1/2 -translate-x-1/2 mt-2 w-[740px] bg-white rounded-2xl shadow-xl border border-gray-100 p-6 z-50 grid grid-cols-12 gap-6"
      onMouseEnter={onMouseEnter}
      onMouseLeave={onMouseLeave}
    >
      {/* LEFT COLUMN: Resources Navigation Links (Grid span 6) */}
      <div className="col-span-6 flex flex-col justify-center space-y-1">
        {resourcesData.map((item, index) => (
          <Link
            key={item.label}
            href={item.url}
            className="flex items-center gap-4 p-2 rounded-xl hover:bg-gray-50 transition-colors duration-200 group"
          >
            {/* Rounded Icon Ring Container */}
            <div className="flex items-center justify-center w-10 h-10 rounded-xl border border-gray-100 bg-white shadow-sm shrink-0 group-hover:border-gray-200">
              <span className="text-base text-gray-500">
                {fallbackIcons[index % fallbackIcons.length]}
              </span>
            </div>

            {/* Label and Inline Badges */}
            <div className="flex items-center gap-2">
              <span className="text-[14px] font-bold text-gray-800 group-hover:text-black transition-colors">
                {item.label}
              </span>
              {item.badge && (
                <span className={getBadgeStyles(item.badge)}>
                  {item.badge.toLowerCase().includes("episode") ? "🚀" : "✦"}{" "}
                  {item.badge}
                </span>
              )}
            </div>
          </Link>
        ))}
      </div>

      {/* RIGHT COLUMN: Featured Podcast Promo Card (Grid span 6) */}
      <div className="col-span-6 border-l border-gray-100 pl-6">
        <div className="bg-gray-50/50 rounded-2xl p-4 border border-gray-50 flex flex-col h-full justify-between">
          <div>
            {/* Podcast Cover Graphic Asset */}
            <div className="relative w-full h-40 bg-[#FF9E1B] rounded-xl overflow-hidden mb-4 flex items-center justify-center p-3 shadow-inner">
              <img
                src="/images/podcast-talent-talks.png" // Replace with your actual podcast graphic asset path
                alt="Talent Talks Podcast Banner"
                className="max-w-full max-h-full object-contain rounded-lg shadow-md"
              />
            </div>

            {/* Typography Content */}
            <h4 className="text-base font-bold text-gray-900 mb-1 leading-snug">
              Why capability is now a business metric
            </h4>
            <p className="text-xs text-gray-500 leading-relaxed mb-4">
              Most organizations can't connect skills to business results. Shannon Tipton shares how to build skills visibility and measure real capability growth.
            </p>
          </div>

          {/* Action Button Link */}
          <Link
            href="/podcast/latest"
            className="w-full inline-flex justify-center items-center py-2.5 px-4 rounded-xl bg-gray-100 text-gray-900 text-xs font-semibold hover:bg-gray-200 transition-colors duration-200"
          >
            Listen to the podcast
          </Link>
        </div>
      </div>
    </div>
  );
}