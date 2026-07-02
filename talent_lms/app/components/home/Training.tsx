"use client";

import Link from "next/link";

const solutionsData = [
  {
    title: "Employee training",
    href: "https://www.talentlms.com/solutions/employee-training-software",
    src: "https://images.www.talentlms.com/wp-content/uploads/2025/07/Solutions_Employee_training_thump_.webp",
  },
  {
    title: "Onboarding training",
    href: "https://www.talentlms.com/solutions/onboarding-training-software",
    src: "https://images.www.talentlms.com/wp-content/uploads/2025/07/Solutions_Onboarding_training_thump.webp",
  },
  {
    title: "Partner training",
    href: "https://www.talentlms.com/solutions/channel-partner-training-software",
    src: "https://images.www.talentlms.com/wp-content/uploads/2025/07/Solutions_Partner_training_thump.webp",
  },
  {
    title: "Customer training",
    href: "https://www.talentlms.com/solutions/customer-training-software",
    src: "https://images.www.talentlms.com/wp-content/uploads/2025/07/Solutions_Customer_support_training_thump.webp",
  },
];

export default function Training() {
  return (
    <section className="relative w-full text-white bg-[#002C62] py-20 lg:py-24 overflow-hidden flex flex-col items-center">
      
      {/* 
        TOP REVERSE SMILE SHAPE DIVIDER MASK: 
        Blends the section smoothly away from the preceding global light gray layout texture 
      */}
      <div className="absolute top-0 left-0 w-full overflow-hidden leading-[0] pointer-events-none z-0">
        <svg
          viewBox="0 0 1440 60"
          preserveAspectRatio="none"
          className="relative block w-full h-[30px] md:h-[50px]"
          xmlns="http://www.w3.org/2000/svg"
        >
          <path
            d="M0,0 L1440,0 L1440,30 C1080,60 360,60 0,30 Z"
            fill="#f7f7f5"
          />
        </svg>
      </div>

      {/* HEADER SECTION WRAPPER */}
      <div className="mx-auto max-w-[1340px] px-6 md:px-12 text-center z-10 flex flex-col items-center mt-6">
        
        {/* Main Header Heading: Styled in Hornbill with safe numeral fallbacks */}
        <h2 
          className="text-3xl md:text-4xl lg:text-[42px] font-semibold tracking-tight leading-[1.2] text-white mb-4"
          style={{ fontFamily: "Hornbill, Georgia, serif" }}
        >
          Training built for every audience
        </h2>

        {/* Descriptive Header Subtext Paragraph: Styled in Axiforma */}
        <p 
          className="text-[15px] md:text-[16px] font-medium leading-[1.6] text-blue-100/90 max-w-3xl mb-14"
          style={{ fontFamily: "Axiforma, sans-serif" }}
        >
          Whether you’re training staff, onboarding partners, or educating customers, TalentLMS helps you deliver 
          the right training to the right people. No extra platforms. No back and forth.
        </p>

        {/* 4-COLUMN RESPONSIVE SOLUTIONS CARD GRID */}
        <div className="w-full grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6 mb-16 items-start">
          {solutionsData.map((card, idx) => (
            <Link 
              key={`solution-${idx}`}
              href={card.href}
              className="group flex flex-col gap-4 text-left transition-transform duration-300 transform hover:scale-[1.02]"
            >
              {/* Image Frame Wrapper matching border radius and overflow constraints */}
              <div className="w-full relative rounded-2xl overflow-hidden bg-sky-200/10 border border-white/5 shadow-md p-0">
                <img
                  src={card.src}
                  alt={`${card.title} thumbnail context layout showcase`}
                  className="w-full h-auto object-cover block rounded-2xl select-none pointer-events-none"
                  loading="lazy"
                />
              </div>

              {/* Title Copy Layout Element text: Styled in Axiforma Medium */}
              <p 
                className="text-[17px] font-medium tracking-tight text-white group-hover:text-blue-300 transition-colors duration-200 leading-[1.2]"
                style={{ fontFamily: "Axiforma, sans-serif" }}
              >
                {card.title}
              </p>
            </Link>
          ))}
        </div>

        {/* BASE CALL TO ACTION INTERFACE: White Primary Pill Action Button Container */}
        {/* BASE CALL TO ACTION INTERFACE: White Primary Pill Action Button Container */}
<div className="w-full flex justify-center items-center">
  <Link
    href="/solutions"
    className="
      h-[52px]
      rounded-full
      bg-white
      px-12
      text-[16px]
      font-bold
      !text-[#002C62]   {/* Added the ! modifier here to force the deep blue text color */}
      hover:bg-blue-50
      transition-all
      duration-200
      whitespace-nowrap
      flex
      items-center
      justify-center
      shadow-sm
    "
    style={{ fontFamily: "Axiforma, sans-serif" }}
  >
    See all solutions
  </Link>
</div>

      </div>

      {/* 
        BOTTOM CONCAVE SMILE SHAPE DIVIDER MASK: 
        Smoothly exits the dark blue section tracking frame block, resetting layout grids safely 
      */}
      <div className="absolute bottom-0 left-0 w-full overflow-hidden leading-[0] pointer-events-none z-0">
        <svg
          viewBox="0 0 1440 60"
          preserveAspectRatio="none"
          className="relative block w-full h-[30px] md:h-[50px]"
          xmlns="http://www.w3.org/2000/svg"
        >
          <path
            d="M0,30 C360,60 1080,60 1440,30 L1440,60 L0,60 Z"
            fill="#f7f7f5"
          />
        </svg>
      </div>

    </section>
  );
}