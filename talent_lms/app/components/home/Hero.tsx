"use client";

import Link from "next/link";
import HomeScreen from "./HomeScreen";

export default function Hero() {
  return (
    <section 
      style={{ background: "linear-gradient(180deg, #002C62 10%, #0046AB 90%)" }}
      className="relative w-full text-white pt-20 pb-0 overflow-hidden flex flex-col items-center"
    >
      {/* Top Tagline */}
      <p className="text-xs md:text-[13px] font-bold tracking-[0.2em] uppercase text-blue-200/90 text-center mb-4 z-10">
        Fueling growth with the #1 LMS
      </p>

      {/* Main Headline */}
      <h1 className="max-w-4xl text-center text-4xl md:text-5xl lg:text-[56px] font-medium tracking-tight leading-[1.12] mb-8 font-serif text-white z-10 px-6">
        Simple to start. Powerful to grow.
        <span className="block mt-2">Designed to last.</span>
      </h1>

      {/* Action Button Container */}
      <div className="flex flex-col items-center gap-3 mb-12 text-center z-10">
        <Link
          href="/create"
          className="h-14 px-14 inline-flex items-center justify-center rounded-full bg-[#BBE5A3] text-[#002C62] font-bold text-lg hover:bg-[#a5db89] transition-all duration-200 shadow-md hover:scale-[1.01]"
        >
          Sign up
        </Link>
        <span className="text-xs md:text-sm text-blue-100/70 font-medium">
          No credit card needed
        </span>
      </div>

      {/* 
        The White Wave Graphic Layer overlay at the bottom:
        This curve mask sits directly behind the mockup image to form the 
        exact concave smile silhouette against the global `#f7f7f5` backdrop.
      */}
      <div className="absolute bottom-0 left-0 w-full overflow-hidden leading-[0] pointer-events-none z-0">
        <svg
          viewBox="0 0 1440 160"
          preserveAspectRatio="none"
          className="relative block w-full h-[80px] md:h-[140px]"
          xmlns="http://www.w3.org/2000/svg"
        >
          <path
            d="M0,60 C360,140 640,160 720,160 C800,160 1080,140 1440,60 L1440,160 L0,160 Z"
            fill="#f7f7f5"
          />
        </svg>
      </div>

      {/* Render the dashboard layout screen block as an inner section of Hero */}
      <div className="w-full max-w-6xl mx-auto px-6 md:px-12 z-10 mt-4 relative">
        <HomeScreen />
      </div>
    </section>
  );
}