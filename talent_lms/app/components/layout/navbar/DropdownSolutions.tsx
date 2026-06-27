"use client";

import { useState } from "react";
import Link from "next/link";
import { solutionsData } from "./navData";

export default function DropdownSolutions({ onMouseEnter, onMouseLeave }) {
  const [activeTab, setActiveTab] = useState("useCases"); // "useCases" or "industries"

  const tabs = [
    { id: "useCases", label: "By use case" },
    { id: "industries", label: "By industry" },
  ];

  const items = activeTab === "useCases" ? solutionsData.useCases : solutionsData.industries;

  // Simple icon placeholders matching the structure of your previous dropdown setups
  const fallbackIcons = ["👥", "👤+", "🧼", "🔐", "🤝", "🛡️"];

  return (
    <div
      className="absolute top-full left-1/2 -translate-x-1/2 mt-2 w-[820px] bg-white rounded-2xl shadow-xl border border-gray-100 p-6 z-50 grid grid-cols-12 gap-6"
      onMouseEnter={onMouseEnter}
      onMouseLeave={onMouseLeave}
    >
      {/* 1. LEFT SIDE: Vertical Sidebar Navigation Tabs */}
      <div className="col-span-3 flex flex-col space-y-1 border-r border-gray-50 pr-4 justify-start pt-2">
        {tabs.map((tab) => (
          <button
            key={tab.id}
            onClick={() => setActiveTab(tab.id)}
            className={`w-full text-left px-4 py-3 rounded-xl text-[14px] font-bold transition-all duration-200 ${
              activeTab === tab.id
                ? "bg-gray-50 text-black shadow-sm"
                : "text-gray-500 hover:text-gray-900 hover:bg-gray-50/50"
            }`}
          >
            {tab.label}
          </button>
        ))}
      </div>

      {/* 2. MIDDLE SIDE: Filtered Navigation Items List */}
      <div className="col-span-4 flex flex-col justify-between min-h-[320px]">
        <ul className="space-y-1">
          {items.map((item, index) => (
            <li key={item.label}>
              <Link
                href={item.url}
                className="flex items-center gap-3 p-2 rounded-xl hover:bg-gray-50 transition-colors duration-200 group"
              >
                {/* Rounded Icon Ring Container */}
                <div className="flex items-center justify-center w-9 h-9 rounded-xl border border-gray-100 bg-white shadow-sm shrink-0 group-hover:border-gray-200">
                  <span className="text-sm text-gray-600">
                    {fallbackIcons[index % fallbackIcons.length]}
                  </span>
                </div>
                
                {/* Label */}
                <span className="text-[14px] font-bold text-gray-800 group-hover:text-black transition-colors">
                  {item.label}
                </span>
              </Link>
            </li>
          ))}
        </ul>

        {/* Dynamic "See all" Anchor */}
        <div className="pt-2 pl-2">
          <Link
            href="/solutions"
            className="inline-flex items-center text-[13px] font-bold text-gray-900 hover:text-black transition-colors"
          >
            See all <span className="ml-1.5 text-base leading-none">→</span>
          </Link>
        </div>
      </div>

      {/* 3. RIGHT SIDE: Awards / Badges Promo Block */}
      <div className="col-span-5 border-l border-gray-100 pl-6">
        <div className="bg-gray-50/50 rounded-2xl p-4 border border-gray-50 flex flex-col h-full justify-between">
          <div>
            {/* Awards Graphic Asset Grid Container */}
            <div className="relative w-full h-36 bg-[#FFD400] rounded-xl overflow-hidden mb-4 flex items-center justify-center p-4">
              <img
                src="/images/awards-badges.png" // Replace with your awards banner image path
                alt="TalentLMS Industry Awards 2026"
                className="max-w-full max-h-full object-contain"
              />
            </div>

            {/* Content Text */}
            <h4 className="text-base font-bold text-gray-900 mb-1">
              Why choose TalentLMS?
            </h4>
            <p className="text-xs text-gray-500 leading-relaxed mb-4">
              How the #1 LMS accelerates success and offers your training real value
            </p>
          </div>

          {/* Action Link Button */}
          <Link
            href="/why-talentlms"
            className="w-full inline-flex justify-center items-center py-2.5 px-4 rounded-xl bg-gray-100 text-gray-900 text-xs font-semibold hover:bg-gray-200 transition-colors duration-200"
          >
            Read more
          </Link>
        </div>
      </div>
    </div>
  );
}