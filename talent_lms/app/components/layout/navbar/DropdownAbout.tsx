"use client";

import Link from "next/link";
import { aboutData } from "./navData"; 

type DropdownProps = {
  onMouseEnter?: () => void;
  onMouseLeave?: () => void;
};

export default function DropdownAbout({ onMouseEnter, onMouseLeave }: DropdownProps) {
  return (
    <div
      className="absolute top-full left-1/2 -translate-x-1/2 mt-2 w-175 bg-white rounded-2xl shadow-xl border border-gray-100 p-6 z-50 grid grid-cols-12 gap-6"
      onMouseEnter={onMouseEnter}
      onMouseLeave={onMouseLeave}
    >
      {/* Left Side: Navigation Links */}
      <div className="col-span-6 flex flex-col justify-center space-y-3">
        {aboutData.map((item) => (
          <Link
            key={item.label}
            href={item.url}
            className="flex items-center gap-4 p-3 rounded-xl hover:bg-gray-50 transition-colors duration-200 group"
          >
            <div className="flex items-center justify-center w-10 h-10 rounded-xl border border-gray-100 bg-white shadow-sm group-hover:border-gray-200">
              {item.icon?.startsWith("/") || item.icon?.startsWith("http") ? (
                <img
                  src={item.icon}
                  alt={`${item.label} icon`}
                  className="w-5 h-5 object-contain"
                />
              ) : (
                <span className="text-gray-400 text-base">{item.icon ?? "•"}</span>
              )}
            </div>
            <span className="text-[15px] font-medium text-gray-800 group-hover:text-black">
              {item.label}
            </span>
          </Link>
        ))}
      </div>

      {/* Right Side: Featured Customer Success Card */}
      <div className="col-span-6 border-l border-gray-100 pl-6">
        <div className="bg-gray-50/50 rounded-2xl p-4 border border-gray-50 flex flex-col h-full justify-between">
          <div>
            {/* Featured Image */}
            <div className="relative w-full h-36 rounded-xl overflow-hidden mb-4">
              <img
                src="/images/navbar/about/aboutus.webp" // Replace with your actual image asset path
                alt="Customer Success Team"
                className="w-full h-full object-cover"
              />
            </div>

            {/* Content */}
            <h4 className="text-base font-bold text-gray-900 mb-1">
              Customer Success
            </h4>
            <p className="text-xs text-gray-500 leading-relaxed mb-4">
              Meet the team responsible for a 96% satisfaction rate
            </p>
          </div>

          {/* Action Button */}
          <Link
            href="/customer-success"
            className="w-full inline-flex justify-center items-center py-2.5 px-4 rounded-xl bg-gray-100 text-gray-900 text-xs font-semibold hover:bg-gray-200 transition-colors duration-200"
          >
            Read more
          </Link>
        </div>
      </div>
    </div>
  );
}
