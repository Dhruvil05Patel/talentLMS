"use client";

import Link from "next/link";

export default function Quote() {
  return (
    <section className="w-full bg-[#f7f7f5] pt-12 pb-[75px] mt-[70px] overflow-hidden select-none">
      {/* 
        MAIN WRAPPER CONTAINER: Max-bounded layout track width matching 1440px.
        Enforces the exact horizontal background gradient across the card.
      */}
      <div className="mx-auto max-w-[1440px] px-6 md:px-12 w-full">
        <div 
          className="relative w-full rounded-[40px] md:rounded-[60px] flex flex-col lg:flex-row items-stretch overflow-hidden min-h-[480px] lg:min-h-[520px]"
          style={{ background: "linear-gradient(89deg, rgb(255, 255, 255) 0%, rgb(249, 243, 229) 100%)" }}
        >
          
          {/* 
            LEFT COLUMN TEXT TRACK: 
            Takes up exactly 50% width to ensure text cleanly wraps over three lines, 
            preventing it from running into the curved boundary area.
          */}
          <div className="w-full lg:w-[50%] flex flex-col justify-center text-left py-14 lg:py-20 px-6 sm:px-12 md:px-16 z-30 relative">
            
            {/* Heading: Exact Brand Blue Color & Tracking Matching SCR-20260701-pppa.jpg */}
            <h2 
              className="text-3xl md:text-4xl lg:text-[42px] font-semibold tracking-tight leading-[1.12] text-[#003882]"
              style={{ fontFamily: "Hornbill, Georgia, serif" }}
            >
              A support team that champions your company’s growth
            </h2>

            {/* Tight Spacing Paragraph: Set to Axiforma font */}
            <p 
              className="mt-[14px] text-[15px] md:text-[16px] font-medium leading-[1.6] text-[#242424] opacity-95 max-w-[480px]"
              style={{ fontFamily: "Axiforma, sans-serif" }}
            >
              At TalentLMS, we care about your growth. With dedicated onboarding, 
              phone support, and ongoing guidance, we’re with you every step of the way.
            </p>

            {/* Underlined Link Layout Area */}
            <div className="flex justify-start items-center mt-7">
              <Link
                href="https://www.talentlms.com/customer-success"
                className="group flex items-center gap-2 text-[16px] font-bold text-[#181E26] hover:text-[#003882] transition-colors duration-200"
                style={{ fontFamily: "Axiforma, sans-serif" }}
              >
                <span className="underline decoration-1 underline-offset-4">Learn more</span>
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

          {/* 
            RIGHT COLUMN: The Bended Shape Image Track
            We use a CSS clip-path to curve the left edge of this container smoothly inward.
            This structural mask divides the image from the background layer perfectly.
          */}
          <div 
            className="w-full lg:w-[58%] h-[320px] lg:h-auto lg:absolute lg:right-0 lg:top-0 lg:bottom-0 overflow-hidden z-10"
            style={{
              clipPath: "polygon(0 0, 100% 0, 100% 100%, 0 100%, 4% 50%)",
              borderRadius: "0 40px 40px 0"
            }}
          >
            {/* Injected custom CSS styling rules directly into the wrapper to handle the side curve smoothly */}
            <style jsx>{`
              @media (min-width: 1024px) {
                .bended-container {
                  clip-path: path('M 45 0 C 65 140, 25 380, 55 540 L 800 540 L 800 0 Z') !important;
                }
              }
            `}</style>

            <picture className="w-full h-full block bended-container">
              <source 
                srcSet="https://images.www.talentlms.com/wp-content/uploads/2025/07/homepage-support-mobile.webp" 
                media="(max-width: 991px)" 
              />
              <source 
                srcSet="https://images.www.talentlms.com/wp-content/uploads/2025/07/homepage-support.webp" 
                media="(min-width: 992px)" 
              />
              <img
                src="https://images.www.talentlms.com/wp-content/uploads/2025/07/homepage-support.webp"
                alt="Smiling TalentLMS support representative working with a headset"
                className="w-full h-full object-cover object-[28%_center] lg:object-left block select-none pointer-events-none"
                loading="eager"
              />
            </picture>
          </div>

        </div>
      </div>
    </section>
  );
}