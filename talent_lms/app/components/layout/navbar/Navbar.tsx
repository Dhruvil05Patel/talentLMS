"use client";

import Logo from "./Logo";
import Navigation from "../Navigation";
import CTAButtons from "./CTAButtons";

export default function Navbar() {
  return (
    <header className="sticky top-0 z-50 w-full bg-white border-b border-gray-100">
      {/* justify-between forces the items to separate completely across the 1440px track */}
      <div className="mx-auto flex h-[76px] max-w-[1440px] items-center justify-between px-8 w-full">
        {/* Left Side Logo */}
        <Logo />

        {/* Centered Navigation Links */}
        <div className="flex-1 flex justify-center px-6">
          <Navigation />
        </div>

        {/* Far Right Call to Actions (Anchored via flex) */}
        <CTAButtons />
      </div>
    </header>
  );
}