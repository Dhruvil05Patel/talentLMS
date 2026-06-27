"use client";

import { useState, useRef } from "react";
import Link from "next/link";
import { navItems } from "./navbar/navData";
import DropdownProducts from "./navbar/DropdownProducts";
import DropdownPlatform from "./navbar/DropdownPlatform";
import DropdownSolutions from "./navbar/DropdownSolutions";
import DropdownCustomers from "./navbar/DropdownCustomers";
import DropdownResources from "./navbar/DropdownResources";
import DropdownAbout from "./navbar/DropdownAbout";

export default function Navigation() {
  const [activeDropdown, setActiveDropdown] = useState<string | null>(null);
  const timeoutRef = useRef<NodeJS.Timeout | null>(null);

  const handleMouseEnter = (title: string) => {
    if (timeoutRef.current) clearTimeout(timeoutRef.current);
    setActiveDropdown(title);
  };

  const handleMouseLeave = () => {
    timeoutRef.current = setTimeout(() => setActiveDropdown(null), 150);
  };

  const handleDropdownEnter = () => {
    if (timeoutRef.current) clearTimeout(timeoutRef.current);
  };

  const handleDropdownLeave = () => {
    timeoutRef.current = setTimeout(() => setActiveDropdown(null), 150);
  };

  const renderDropdown = (title: string) => {
    switch (title) {
      case "Products":
        return <DropdownProducts onMouseEnter={handleDropdownEnter} onMouseLeave={handleDropdownLeave} />;
      case "Platform":
        return <DropdownPlatform onMouseEnter={handleDropdownEnter} onMouseLeave={handleDropdownLeave} />;
      case "Solutions":
        return <DropdownSolutions onMouseEnter={handleDropdownEnter} onMouseLeave={handleDropdownLeave} />;
      case "Customers":
        return <DropdownCustomers onMouseEnter={handleDropdownEnter} onMouseLeave={handleDropdownLeave} />;
      case "Resources":
        return <DropdownResources onMouseEnter={handleDropdownEnter} onMouseLeave={handleDropdownLeave} />;
      case "About us":
        return <DropdownAbout onMouseEnter={handleDropdownEnter} onMouseLeave={handleDropdownLeave} />;
      default:
        return null;
    }
  };

  const getDropdownAlignmentClass = (title: string) => {
    if (title === "Products" || title === "Platform") return "left-0";
    if (title === "About us" || title === "Resources") return "right-0";
    return "left-1/2 -translate-x-1/2";
  };

  return (
    <nav className="flex items-center space-x-10 py-2">
      {navItems.map((item) => (
        <div
          key={item.title}
          className="relative py-2"
          onMouseEnter={() => handleMouseEnter(item.title)}
          onMouseLeave={handleMouseLeave}
        >
          {/* If the item does NOT have a dropdown (e.g., Pricing), render standard link */}
          {!item.hasDropdown ? (
            <Link
              href={item.href || "/"}
              className="text-[15px] font-semibold text-[#181E26] hover:text-[#FF6B00] transition-colors whitespace-nowrap"
            >
              {item.title}
            </Link>
          ) : (
            /* If the item DOES have a dropdown, show active flip arrows based on current hover state */
            <span className="flex items-center gap-1 text-[15px] font-semibold text-[#181E26] hover:text-[#FF6B00] transition-colors select-none whitespace-nowrap cursor-pointer">
              {item.title}
              <ChevronIcon 
                className={`h-3 w-3 text-gray-400 transition-transform duration-200 transform ${
                  activeDropdown === item.title ? "rotate-180 text-[#FF6B00]" : ""
                }`} 
              />
            </span>
          )}

          {/* Individual Dropdown Mount Point */}
          {activeDropdown === item.title && item.hasDropdown && (
            <div className={`absolute top-full mt-2 z-50 ${getDropdownAlignmentClass(item.title)}`}>
              {renderDropdown(item.title)}
            </div>
          )}
        </div>
      ))}
    </nav>
  );
}

// Reusable SVG chevron component
function ChevronIcon({ className }: { className?: string }) {
  return (
    <svg 
      className={className} 
      viewBox="0 0 12 12" 
      fill="none" 
      xmlns="http://www.w3.org/2000/svg"
    >
      <path 
        d="M2.5 4.5L6 8L9.5 4.5" 
        stroke="currentColor" 
        strokeWidth="2" 
        strokeLinecap="round" 
        strokeLinejoin="round" 
      />
    </svg>
  );
}