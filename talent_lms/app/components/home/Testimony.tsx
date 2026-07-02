"use client";

import { useState, useEffect, useRef } from "react";

const originalTestimonials = [
  {
    name: "Lucas Weber",
    position: "Product Marketing Manager",
    companyLogo: "https://images.www.talentlms.com/wp-content/uploads/2020/12/NOSTO-logo-horizontal-PRIMARY.png",
    avatar: "https://images.www.talentlms.com/wp-content/uploads/2020/12/lucas-weber-nosto.jpg",
    text: "Before TalentLMS, we would send an email and hope everyone figures it out. Now we can ensure every person has taken the training. It’s as simple as that.",
    italic: true,
  },
  {
    name: "Corin Birchall",
    position: "Head of Retail, Global",
    companyLogo: "https://images.www.talentlms.com/wp-content/uploads/2023/04/Roland.png",
    avatar: "https://images.www.talentlms.com/wp-content/uploads/2025/07/Corin-Birchall.png",
    text: "We needed a platform that was ready for deployment, rather than building something from scratch. Within a week, we had TalentLMS up and running and developed about 10 courses. That helped our teams respond to the sudden changes in the market.",
    italic: false,
  },
  {
    name: "Caroline Watson",
    position: "Head of Product Marketing",
    companyLogo: "https://images.www.talentlms.com/wp-content/uploads/2023/02/Delonghi-logo.png",
    avatar: "https://images.www.talentlms.com/wp-content/uploads/2021/10/caroline_watson_delonghi.png",
    text: "The TalentLMS platform is intuitive and quick to set up allowing our teams around the world to access up-to-date courses without the need to install software. And it’s mobile friendly, allowing our ‘remote’ sales representatives to gain knowledge and training on a more regular basis.",
    italic: false,
  },
];

// Extended list for seamless looping track buffer
const extendedTestimonials = [
  ...originalTestimonials,
  ...originalTestimonials,
  ...originalTestimonials,
];

export default function Testimony() {
  const originalCount = originalTestimonials.length;
  const cardWidthWithGap = 452; // Width of card (420px) + Gap (32px)
  
  // Starting index focused on the true middle set
  const [currentIndex, setCurrentIndex] = useState(originalCount + 1);
  const [isTransitioning, setIsTransitioning] = useState(true);
  
  // Pointer Dragging States
  const [isDragging, setIsDragging] = useState(false);
  const [startX, setStartX] = useState(0);
  const [dragOffset, setDragOffset] = useState(0);
  
  const trackRef = useRef<HTMLDivElement>(null);
  const activeDotIndex = (currentIndex - originalCount) % originalCount;

  // Calculate base horizontal positioning
  const baseTranslate = (originalCount + 1 - currentIndex) * cardWidthWithGap;
  const finalTranslate = isDragging ? baseTranslate + dragOffset : baseTranslate;

  // Pointer Interaction Handlers
  const handleDragStart = (clientX: number) => {
    setIsDragging(true);
    setStartX(clientX);
    setIsTransitioning(false); // Kill active animations immediately while interacting
  };

  const handleDragMove = (clientX: number) => {
    if (!isDragging) return;
    const currentDiff = clientX - startX;
    setDragOffset(currentDiff);
  };

  const handleDragEnd = () => {
    if (!isDragging) return;
    setIsDragging(false);
    setIsTransitioning(true);

    // Calculate how many indexes we traveled based on the swipe distance
    const threshold = 120; // Required swipe distance in px to shift slides
    let indexChange = 0;

    if (dragOffset < -threshold) {
      indexChange = Math.round(Math.abs(dragOffset) / cardWidthWithGap) || 1;
    } else if (dragOffset > threshold) {
      indexChange = -Math.round(dragOffset / cardWidthWithGap) || -1;
    }

    const nextIndex = currentIndex + indexChange;
    setCurrentIndex(nextIndex);
    setDragOffset(0);
  };

  // Safe Infinite Edge Loop Shifter
  const handleTransitionEnd = () => {
    if (isDragging) return;

    if (currentIndex <= originalCount - 1) {
      setIsTransitioning(false);
      setCurrentIndex(currentIndex + originalCount);
    } else if (currentIndex >= originalCount * 2) {
      setIsTransitioning(false);
      setCurrentIndex(currentIndex - originalCount);
    }
  };

  // Re-enable smooth transition curves after snapping updates
  useEffect(() => {
    if (!isTransitioning && !isDragging) {
      requestAnimationFrame(() => {
        requestAnimationFrame(() => {
          setIsTransitioning(true);
        });
      });
    }
  }, [isTransitioning, isDragging]);

  return (
    <section className="w-full bg-[#f7f7f5] pt-16 pb-24 overflow-hidden select-none flex flex-col items-center">
      
      {/* HEADER */}
      <div className="flex flex-col items-center text-center px-6 mb-12">
        <div className="mb-4 text-center pointer-events-none">
          <img 
            src="https://images.www.talentlms.com/wp-content/uploads/2025/07/icon-quote.svg" 
            alt="Quote mark icon" 
            width="42" 
            height="32"
            className="mx-auto block"
          />
        </div>
        <h2 
          className="text-3xl md:text-4xl lg:text-[42px] font-semibold text-[#181E26] tracking-tight"
          style={{ fontFamily: "Hornbill, Georgia, serif" }}
        >
          Proof, not promises
        </h2>
      </div>

      {/* TRACK PORTS WITH BLUR GRADIENTS */}
      <div className="w-full relative max-w-[1440px] flex justify-center items-center overflow-hidden px-4 md:px-0">
        
        {/* Faded Side Vignettes matching SCR-20260702-nyda.jpg */}
        <div className="absolute top-0 bottom-0 left-0 w-16 md:w-64 bg-gradient-to-r from-[#f7f7f5] via-[#f7f7f5]/90 to-transparent z-20 pointer-events-none" />
        <div className="absolute top-0 bottom-0 right-0 w-16 md:w-64 bg-gradient-to-l from-[#f7f7f5] via-[#f7f7f5]/90 to-transparent z-20 pointer-events-none" />

        {/* Outer view wrapper monitoring native mouse/touch streams */}
        <div 
          className="w-full flex justify-center items-center cursor-grab active:cursor-grabbing touch-pan-y"
          onMouseDown={(e) => handleDragStart(e.clientX)}
          onMouseMove={(e) => handleDragMove(e.clientX)}
          onMouseUp={handleDragEnd}
          onMouseLeave={handleDragEnd}
          onTouchStart={(e) => handleDragStart(e.touches[0].clientX)}
          onTouchMove={(e) => handleDragMove(e.touches[0].clientX)}
          onTouchEnd={handleDragEnd}
        >
          {/* Draggable Viewport Track */}
          <div 
            ref={trackRef}
            onTransitionEnd={handleTransitionEnd}
            className="flex gap-8 items-center py-4 select-none"
            style={{
              transform: `translateX(${finalTranslate}px)`, 
              transition: isTransitioning ? "transform 600ms cubic-bezier(0.215, 0.610, 0.355, 1)" : "none",
            }}
          >
            {extendedTestimonials.map((item, idx) => {
              const isActive = idx === currentIndex;
              return (
                <div
                  key={`infinite-card-${idx}`}
                  className={`
                    w-[320px] sm:w-[420px] min-h-[260px] bg-white rounded-3xl p-6 md:p-8 pointer-events-none
                    border border-gray-100 shadow-[0_10px_35px_-15px_rgba(0,0,0,0.04)]
                    flex flex-col justify-between transition-all duration-500 shrink-0 select-none
                    ${isActive ? "opacity-100 scale-100" : "opacity-20 scale-[0.93] blur-[0.4px]"}
                  `}
                >
                  <div className="flex flex-col gap-6 w-full">
                    <div className="flex items-center justify-between gap-4 w-full">
                      
                      <div className="flex items-center gap-3">
                        <img
                          src={item.avatar}
                          alt={`${item.name} profile avatar`}
                          className="w-11 h-11 rounded-full object-cover grayscale block bg-gray-100"
                        />
                        <div className="flex flex-col text-left leading-tight">
                          <span className="text-[15px] font-bold text-[#181E26]" style={{ fontFamily: "Axiforma, sans-serif" }}>
                            {item.name}
                          </span>
                          <span className="text-[12px] font-medium text-gray-500" style={{ fontFamily: "Axiforma, sans-serif" }}>
                            {item.position}
                          </span>
                        </div>
                      </div>

                      <div className="max-w-[75px] md:max-w-[85px] shrink-0">
                        <img
                          src={item.companyLogo}
                          alt="Company identity branding"
                          className="max-h-[26px] w-auto object-contain block ml-auto filter brightness-95"
                        />
                      </div>
                    </div>

                    <p 
                      className={`text-[14px] md:text-[15px] font-medium leading-[1.65] text-[#242424] text-left opacity-90 ${item.italic ? "not-italic" : ""}`}
                      style={{ fontFamily: "Axiforma, sans-serif" }}
                    >
                      {item.text}
                    </p>
                  </div>
                </div>
              );
            })}
          </div>
        </div>
      </div>

      {/* PAGINATION INDICATOR DOTS */}
      <div className="flex items-center gap-2.5 mt-12">
        {originalTestimonials.map((_, idx) => (
          <button
            key={`dot-index-${idx}`}
            onClick={() => {
              setIsTransitioning(true);
              setCurrentIndex(originalCount + idx);
            }}
            aria-label={`Show slide template block ${idx + 1}`}
            className={`
              h-1 rounded-full transition-all duration-300
              ${idx === activeDotIndex ? "w-7 bg-gray-800" : "w-4 bg-gray-300 hover:bg-gray-400"}
            `}
          />
        ))}
      </div>

    </section>
  );
}