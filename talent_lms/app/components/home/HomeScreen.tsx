"use client";

import Image from "next/image";
import dashboardImg from "@/public/images/hero/hero-homepage.webp"; // Points directly to your local file path asset location

export default function HomeScreen() {
  return (
    <div className="w-full bg-transparent transform translate-y-4 md:translate-y-8">
      {/* 
        The Presentation Window Wrap Frame:
        Implements a soft border outline and a realistic dropdown window box-shadow 
        to perfectly align with target display parameters.
      */}
      <div className="relative w-full rounded-2xl shadow-[0_25px_60px_-15px_rgba(0,0,0,0.35)] bg-white border border-gray-200/40 p-1.5 md:p-2.5">
        <Image
          src={dashboardImg}
          alt="TalentLMS Core System Platform Showcase Mockup Layout"
          className="w-full h-auto rounded-xl object-contain block"
          priority
        />
      </div>
    </div>
  );
}