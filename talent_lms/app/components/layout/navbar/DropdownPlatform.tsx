"use client";

import Link from "next/link";
import { platformData } from "./navData";

export default function DropdownPlatform({ onMouseEnter, onMouseLeave }) {
  return (
    <div
      className="absolute top-full left-1/2 -translate-x-1/3 mt-2 w-[760px] bg-white rounded-2xl shadow-xl border border-gray-100 p-6 z-50 grid grid-cols-12 gap-8"
      onMouseEnter={onMouseEnter}
      onMouseLeave={onMouseLeave}
    >
      {/* LEFT COLUMN: Platform + AI Features (Grid span 6) */}
      <div className="col-span-6 flex flex-col space-y-6">
        
        {/* Section 1 – Platform */}
        <div>
          <h3 className="text-xs font-semibold text-gray-400 uppercase tracking-wider mb-3">
            Platform
          </h3>
          <ul className="space-y-1">
            {platformData.platform.map((item) => (
              <li key={item.label}>
                <Link
                  href={item.url}
                  className="flex items-center gap-3 p-2 rounded-xl hover:bg-gray-50 transition-all duration-200 group"
                >
                  <div className="flex items-center justify-center w-9 h-9 rounded-lg border border-gray-100 bg-white shadow-sm shrink-0 group-hover:border-gray-200">
                    <span className="text-sm text-gray-500">⚙️</span> {/* Placeholder Icon */}
                  </div>
                  <div className="flex flex-col">
                    <span className="text-[14px] font-bold text-gray-800 group-hover:text-black leading-tight">
                      {item.label}
                    </span>
                    <span className="text-[11px] text-gray-400 mt-0.5 font-normal">
                      {item.description}
                    </span>
                  </div>
                </Link>
              </li>
            ))}
          </ul>
        </div>

        {/* Section 2 – AI Features */}
        <div>
          <h3 className="text-xs font-semibold text-gray-400 uppercase tracking-wider mb-3">
            AI Features
          </h3>
          <ul className="space-y-1">
            {platformData.aiFeatures.map((item) => (
              <li key={item.label}>
                <Link
                  href={item.url}
                  className="flex items-center gap-3 p-2 rounded-xl hover:bg-gray-50 transition-all duration-200 group"
                >
                  <div className="flex items-center justify-center w-9 h-9 rounded-lg border border-gray-100 bg-white shadow-sm shrink-0 group-hover:border-gray-200">
                    <span className="text-sm text-gray-500">✨</span> {/* Placeholder Icon */}
                  </div>
                  <div className="flex flex-col flex-1">
                    <div className="flex items-center gap-2">
                      <span className="text-[14px] font-bold text-gray-800 group-hover:text-black leading-tight">
                        {item.label.split(" – ")[0]} {/* Trims text dynamically if preferred */}
                      </span>
                      {item.badge && (
                        <span className="inline-flex items-center bg-green-100 text-green-700 text-[9px] font-extrabold px-1.5 py-0.5 rounded-md tracking-wider">
                          ✦ {item.badge}
                        </span>
                      )}
                    </div>
                    <span className="text-[11px] text-gray-400 mt-0.5 font-normal">
                      {item.description}
                    </span>
                  </div>
                </Link>
              </li>
            ))}
          </ul>
        </div>
      </div>

      {/* RIGHT COLUMN: Course Solutions (Grid span 6) */}
      <div className="col-span-6 border-l border-gray-100 pl-6 flex flex-col justify-between">
        <div>
          <h3 className="text-xs font-semibold text-gray-400 uppercase tracking-wider mb-3">
            Course solutions
          </h3>
          <ul className="space-y-1">
            {platformData.courseSolutions.map((item) => (
              <li key={item.label}>
                <Link
                  href={item.url}
                  className="flex items-center gap-3 p-2 rounded-xl hover:bg-gray-50 transition-all duration-200 group"
                >
                  <div className="flex items-center justify-center w-9 h-9 rounded-lg border border-gray-100 bg-white shadow-sm shrink-0 group-hover:border-gray-200">
                    <span className="text-sm text-gray-500">📚</span> {/* Placeholder Icon */}
                  </div>
                  <div className="flex flex-col">
                    <span className="text-[14px] font-bold text-gray-800 group-hover:text-black leading-tight">
                      {item.label}
                    </span>
                    <span className="text-[11px] text-gray-400 mt-0.5 font-normal">
                      {item.description}
                    </span>
                  </div>
                </Link>
              </li>
            ))}
          </ul>
        </div>

        {/* Bottom Footer Link */}
        <div className="pt-4 pl-2">
          <Link
            href="/course‑solutions"
            className="inline-flex items-center text-[13px] font-bold text-gray-900 hover:text-black transition-colors"
          >
            All course solutions <span className="ml-1.5 text-base leading-none">→</span>
          </Link>
        </div>
      </div>
    </div>
  );
}