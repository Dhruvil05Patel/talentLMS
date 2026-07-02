"use client";

import Link from "next/link";

export default function Library() {
  return (
    <section 
      className="relative w-full text-white pt-24 pb-0 mt-[70px] overflow-hidden flex flex-col items-center"
      style={{
        background: "linear-gradient(176deg, rgb(0, 70, 171) 2%, rgb(0, 146, 255) 81%)"
      }}
    >
      
      {/* 
        TOP EXTERNAL BENDED CURVE:
        Creates the outward arc silhouette separating the section from the preceding viewtrack
      */}
      <div className="absolute top-0 left-0 w-full overflow-hidden leading-[0] pointer-events-none z-10">
        <svg
          viewBox="0 0 1440 60"
          preserveAspectRatio="none"
          className="relative block w-full h-[30px] md:h-[50px]"
          xmlns="http://www.w3.org/2000/svg"
        >
          <path
            d="M0,0 C360,45 1080,45 1440,0 L1440,0 L0,0 Z"
            fill="#f7f7f5"
          />
        </svg>
      </div>

      {/* CORE DISPLAY CONTENT PANEL */}
      <div className="mx-auto max-w-[1340px] px-6 md:px-12 text-center z-20 flex flex-col items-center relative">
        
        {/* Eyebrow Label Tag Copy: Styled in Axiforma */}
        <p 
          className="text-sm md:text-base font-medium tracking-wide text-white/90 uppercase mb-2"
          style={{ fontFamily: "Axiforma, sans-serif" }}
        >
          Presenting our Course Library
        </p>

        {/* Main Title Heading: Styled in Hornbill with numeral fallbacks */}
        <h2 
          className="text-3xl md:text-5xl lg:text-[44px] font-semibold tracking-tight leading-[1.2] text-white max-w-4xl mt-4 mb-5"
          style={{ fontFamily: "Hornbill, Georgia, serif" }}
        >
          TalentLibrary™:<br />The perfect match for your training
        </h2>

        {/* Description Text Content Block: Styled in Axiforma */}
        <p 
          className="text-base md:text-[16px] font-medium leading-[1.65] text-white/90 max-w-3xl mb-10"
          style={{ fontFamily: "Axiforma, sans-serif" }}
        >
          TalentLibrary™ gives you instant access to 1,000+ expertly-curated courses on the skills that matter—soft 
          skills, leadership, compliance, and more. Always up to date and ready to launch on TalentLMS.
        </p>

        {/* CALL TO ACTION LINK INTERFACE: White Pill Action Button with Forced Color Overrides */}
        <div className="w-full flex justify-center items-center mb-16">
          <Link
            href="https://www.talentlms.com/library/"
            className="
              h-[52px]
              rounded-full
              bg-white
              px-10
              text-[16px]
              font-bold
              !text-[#0046AB]
              hover:bg-blue-50
              transition-all
              duration-200
              whitespace-nowrap
              flex
              items-center
              justify-center
              shadow-md
            "
            style={{ fontFamily: "Axiforma, sans-serif" }}
          >
            Explore TalentLibrary™
          </Link>
        </div>

        {/* HERO GRAPHICS PRESENTATION: Course layout cards overlapping downward into the viewport */}
        <div className="w-full max-w-[1100px] mt-4 select-none pointer-events-none transform translate-y-[2px]">
          <picture className="w-full h-auto block">
            <source 
              srcSet="https://images.www.talentlms.com/wp-content/uploads/2025/07/home-library.webp" 
              media="(min-width: 768px)" 
            />
            <img
              src="https://images.www.talentlms.com/wp-content/uploads/2025/07/home-library.webp"
              alt="TalentLibrary course catalog previews displaying creative illustrative covers"
              className="w-full h-auto object-cover object-bottom block"
              loading="lazy"
            />
          </picture>
        </div>

      </div>

      {/* 
        BOTTOM EXTERNAL BENDED CURVE:
        Creates the matching bottom outward arc silhouette extending fluidly over the background grid bounds
      */}
      <div className="absolute bottom-0 left-0 w-full overflow-hidden leading-[0] pointer-events-none z-10">
        <svg
          viewBox="0 0 1440 60"
          preserveAspectRatio="none"
          className="relative block w-full h-[30px] md:h-[50px]"
          xmlns="http://www.w3.org/2000/svg"
        >
          <path
            d="M0,60 C360,15 1080,15 1440,60 L1440,60 L0,60 Z"
            fill="#f7f7f5"
          />
        </svg>
      </div>

    </section>
  );
}