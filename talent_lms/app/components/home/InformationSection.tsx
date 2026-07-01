"use client";

import Link from "next/link";

export default function InformationSection() {
  return (
    <div className="w-full bg-[#f7f7f5] flex flex-col gap-24 lg:gap-32 pt-16 pb-24">
      
      {/* =========================================================================
          SECTION 1: AI Course Creator (Text Left, Image Right)
         ========================================================================= */}
      <section className="w-full overflow-hidden">
        <div className="mx-auto max-w-[1440px] px-6 md:px-12 flex flex-col lg:flex-row items-center justify-between gap-12 lg:gap-16 w-full">
          
          {/* LEFT COLUMN: Text Copy */}
          <div className="w-full lg:basis-[44.5%] flex flex-col justify-center text-left shrink-0">
            <div className="mb-8 select-none pointer-events-none">
              <img 
                src="https://images.www.talentlms.com/wp-content/plugins/talent-blocks/assets/images/brand-icons/upskill-tech.svg" 
                alt="Upskill tech icon" 
                width="46" 
                height="46"
                className="block"
              />
            </div>

            <h2 
              className="text-4xl md:text-5xl lg:text-[54px] font-semibold tracking-tight leading-[1.1] text-[#181E26] mb-6"
              style={{ fontFamily: "Hornbill, Georgia, serif" }}
            >
              Simple to start. <span className="block mt-1">Live 2x faster.</span>
            </h2>

            <p 
              className="text-base md:text-[17px] font-medium leading-[1.6] text-[#242424] opacity-90 max-w-xl"
              style={{ fontFamily: "Axiforma, sans-serif" }}
            >
              Sign up in seconds and build your training easily. With AI-assisted course creation 
              and an intuitive setup, you’ll launch 2x faster than the typical LMS setup—no IT, 
              no complex buying process. So your people can start learning (and performing) sooner.
            </p>
          </div>

          {/* RIGHT COLUMN: Image */}
          <div className="w-full lg:basis-[55.5%] flex items-center justify-end shrink-0">
            <div className="relative w-full block rounded-2xl bg-white/40 p-2 border border-gray-200/20 shadow-sm">
              <img
                src="images/hero/TalentLMS_Homepage_Create_AI.webp"
                alt="TalentLMS Platform AI Course Generator Dashboard"
                width={1400}
                height={914}
                className="w-full h-auto object-cover block select-none pointer-events-none rounded-xl"
                loading="lazy"
              />
            </div>
          </div>
        </div>
      </section>

      {/* =========================================================================
          SECTION 2: Scales as you grow (Image Left, Text Right)
         ========================================================================= */}
      <section className="w-full overflow-hidden">
        <div className="mx-auto max-w-[1440px] px-6 md:px-12 flex flex-col-reverse lg:flex-row items-center justify-between gap-12 lg:gap-16 w-full">
          
          {/* LEFT COLUMN: Image Container */}
          <div className="w-full lg:basis-[55.5%] flex items-center justify-start shrink-0">
            <div className="relative w-full block rounded-2xl bg-white/40 p-2 border border-gray-200/20 shadow-sm">
              <img
                src="/images/hero/TalentLMS_Homepage_Branches.webp" // Change path if needed
                alt="TalentLMS Multi-Portal Custom Switcher Dashboard"
                width={1400}
                height={914}
                className="w-full h-auto object-cover block select-none pointer-events-none rounded-xl"
                loading="lazy"
              />
            </div>
          </div>

          {/* RIGHT COLUMN: Text Copy Box */}
          <div className="w-full lg:basis-[44.5%] flex flex-col justify-center text-left shrink-0">
            <div className="mb-8 select-none pointer-events-none">
              <svg width="46" height="46" viewBox="0 0 46 46" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M8 12C8 9.79086 9.79086 8 12 8H24C26.2091 8 28 9.79086 28 12V24C28 26.2091 26.2091 28 24 28H12C9.79086 28 8 26.2091 8 24V12Z" fill="#002C62" />
                <path d="M14 18C14 15.7909 15.7909 14 18 14H30C32.2091 14 34 15.7909 34 18V30C34 32.2091 32.2091 34 30 34H18C15.7909 34 14 32.2091 14 30V18Z" fill="#FF6B35" />
                <path d="M20 24C20 21.7909 21.7909 20 24 20H36C38.2091 20 40 21.7909 40 24V36C40 38.2091 38.2091 40 36 40H24C21.7909 40 20 38.2091 20 36V24Z" fill="#BBE5A3" />
              </svg>
            </div>

            <h2 
              className="text-4xl md:text-5xl lg:text-[54px] font-semibold tracking-tight leading-[1.1] text-[#181E26] mb-6"
              style={{ fontFamily: "Hornbill, Georgia, serif" }}
            >
              Scales as you grow. <span className="block mt-1">Stays easy to use.</span>
            </h2>

            <p 
              className="text-base md:text-[17px] font-medium leading-[1.6] text-[#242424] opacity-90 max-w-xl"
              style={{ fontFamily: "Axiforma, sans-serif" }}
            >
              As teams grow, and new audiences come on board, the TalentLMS platform makes it 
              easy to deliver tailored training at scale without adding complexity. Set up separate 
              training portals for employees, partners, or customers while keeping everything centralized 
              and simple to manage.
            </p>
          </div>

        </div>
      </section>

      {/* =========================================================================
          SECTION 3: Designed for impact (Text Left, Image Right)
         ========================================================================= */}
      <section className="w-full overflow-hidden">
        <div className="mx-auto max-w-[1440px] px-6 md:px-12 flex flex-col lg:flex-row items-center justify-between gap-12 lg:gap-16 w-full">
          
          {/* LEFT COLUMN: Text Copy */}
          <div className="w-full lg:basis-[44.5%] flex flex-col justify-center text-left shrink-0">
            {/* Custom Thunderbolt Stack SVG Brand Icon */}
            <div className="mb-8 select-none pointer-events-none">
              <svg width="46" height="46" viewBox="0 0 46 46" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M12 6L28 6L20 20L34 20L14 42L20 24L10 24L12 6Z" fill="#FF6B35" className="opacity-95" />
                <path d="M18 10L32 10L24 22L36 22L18 42L22 26L14 26L18 10Z" fill="#002C62" className="mix-blend-multiply opacity-80" />
              </svg>
            </div>

            <h2 
              className="text-4xl md:text-5xl lg:text-[54px] font-semibold tracking-tight leading-[1.1] text-[#181E26] mb-6"
              style={{ fontFamily: "Hornbill, Georgia, serif" }}
            >
              Designed for impact. <span className="block mt-1">Backed by results.</span>
            </h2>

            <p 
              className="text-base md:text-[17px] font-medium leading-[1.6] text-[#242424] opacity-90 max-w-xl"
              style={{ fontFamily: "Axiforma, sans-serif" }}
            >
              The LMS that doesn’t just launch and scale training—it makes it count. 
              Build real skills, track meaningful progress, and prove ROI with data you trust. 
              From day one and beyond, see results that actually matter to your goals.
            </p>
          </div>

          {/* RIGHT COLUMN: Performance / ROI Dashboard Image Preview Frame */}
          <div className="w-full lg:basis-[55.5%] flex items-center justify-end shrink-0">
            <div className="relative w-full block rounded-2xl bg-white/40 p-2 border border-gray-200/20 shadow-sm">
              <img
                src="/images/hero/TalentLMS-Dashboard_Best-ROI.webp" // Replace with the cropped dashboard asset
                alt="TalentLMS ROI Metrics and Analytics Performance Dashboard Screen Layout"
                width={1400}
                height={914}
                className="w-full h-auto object-cover block select-none pointer-events-none rounded-xl"
                loading="lazy"
              />
            </div>
          </div>

        </div>
      </section>

      {/* =========================================================================
          BASE ACTION INTERFACE: Centered "See the platform" Pill Link Button
         ========================================================================= */}
      <div className="w-full flex justify-center items-center pt-8 select-none">
        <Link
          href="/platform"
          className="
            h-[50px]
            rounded-full
            border
            border-black
            px-10
            text-[15px]
            font-bold
            text-black
            hover:bg-gray-200
            transition-all
            duration-200
            whitespace-nowrap
            flex
            items-center
            justify-center
          "
          style={{ fontFamily: "Axiforma, sans-serif" }}
        >
          See the platform
        </Link>
      </div>

    </div>
  );
}