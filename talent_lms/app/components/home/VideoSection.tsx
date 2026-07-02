"use client";

import Link from "next/link";

export default function VideoSection() {
  return (
    <section className="w-full bg-[#f7f7f5] pt-16 pb-20 overflow-hidden select-none">
      {/* 
        MAIN WRAPPER CONTAINER: 
        Matches the maximum structural bounds (1340px) shown in SCR-20260701-przo.jpg 
      */}
      <div className="mx-auto max-w-[1340px] px-6 md:px-12 flex flex-col items-center text-center w-full">
        
        {/* Brand Icon: ROI Icon matching the source code configuration */}
        <div className="mb-6 select-none pointer-events-none flex justify-center">
          <img 
            src="https://images.www.talentlms.com/wp-content/plugins/talent-blocks/assets/images/brand-icons/roi.svg" 
            alt="Roi icon" 
            width="46" 
            height="46"
            className="block h-11 w-11 object-contain"
          />
        </div>

        {/* Heading: Using Hornbill with support for numbers via Georgia fallback */}
        <h2 
          className="text-3xl md:text-4xl lg:text-[40px] font-semibold tracking-tight leading-[1.2] text-[#181E26] max-w-3xl mb-5"
          style={{ fontFamily: "Hornbill, Georgia, serif" }}
        >
          How a team of two built a global training academy in 8 months
        </h2>

        {/* Subtext Description Paragraph: Using Axiforma */}
        <p 
          className="text-base md:text-[16px] font-medium leading-[1.6] text-[#242424] opacity-85 max-w-4xl mb-12"
          style={{ fontFamily: "Axiforma, sans-serif" }}
        >
          With no LMS background, Smartbox built its training academy on TalentLMS in just 8 months. 
          3 years on, Smartbox Academy reaches 12,000+ learners across 37 countries.
        </p>

        {/* 
          VIDEO DISPLAY CORE: 
          Implements the yellow border wrapper matching 'has-yellow-600-border-color' 
          and border-radius bounds from the source code.
        */}
        <div className="w-full max-w-[960px] border-[6px] border-[#FFC82C] rounded-[28px] overflow-hidden bg-black shadow-sm mb-10 relative group">
          <video
            className="w-full h-auto object-cover block"
            style={{ aspectRatio: "1280 / 720" }}
            autoPlay
            loop
            muted
            playsInline
            src="https://www.talentlms.com/wp-content/uploads/2026/06/smartbox_homepage-preview.mp4"
          />
          
          {/* Subtle Video Context HUD Overlays (Like the Unmute Indicator) */}
          <div className="absolute top-4 right-4 z-10 bg-black/60 backdrop-blur-sm rounded-full p-2 text-white pointer-events-none opacity-80 group-hover:opacity-100 transition-opacity">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16">
              <path d="M6.717 3.55A.5.5 0 0 1 7 4v8a.5.5 0 0 1-.812.39L3.825 10.5H1.5A.5.5 0 0 1 1 10V6a.5.5 0 0 1 .5-.5h2.325l2.363-1.89a.5.5 0 0 1 .529-.06zM13.5 8a5.5 5.5 0 0 1-8.156 4.854l.707-.707A4.5 4.5 0 1 0 12.5 8c0-1.258-.512-2.397-1.341-3.226l.707-.707A5.472 5.472 0 0 1 13.5 8z"/>
            </svg>
          </div>
        </div>

        {/* Action Link Button Area with Link Text Underline Interaction */}
        <div className="flex justify-center items-center">
          <Link
            href="https://www.talentlms.com/customers/smartbox"
            target="_blank"
            rel="noreferrer noopener"
            className="group flex items-center gap-1.5 text-[16px] font-bold text-[#181E26] hover:text-[#003882] transition-colors duration-200"
            style={{ fontFamily: "Axiforma, sans-serif" }}
          >
            <span className="underline decoration-1 underline-offset-4">Watch the success story</span>
            <svg 
              className="w-3.5 h-3.5 transform group-hover:translate-x-0.5 transition-transform duration-200" 
              viewBox="0 0 16 16" 
              fill="none" 
              xmlns="http://www.w3.org/2000/svg"
            >
              <path 
                d="M6 12L10 8L6 4" 
                stroke="currentColor" 
                strokeWidth="2.5" 
                strokeLinecap="round" 
                strokeLinejoin="round" 
              />
            </svg>
          </Link>
        </div>

      </div>
    </section>
  );
}