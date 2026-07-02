"use client";

import Link from "next/link";
import { useRef, useState } from "react";

export default function VideoSection() {
  const videoRef = useRef<HTMLVideoElement>(null);
  const [isMuted, setIsMuted] = useState(true);

  // Simple click handler to toggle audio stream seamlessly
  const toggleMute = () => {
    if (videoRef.current) {
      const currentMuteState = videoRef.current.muted;
      videoRef.current.muted = !currentMuteState;
      setIsMuted(!currentMuteState);
    }
  };

  return (
    <section className="w-full bg-[#f7f7f5] pt-16 pb-20 overflow-hidden select-none">
      <div className="mx-auto max-w-[1340px] px-6 md:px-12 flex flex-col items-center text-center w-full">
        
        {/* Brand Icon */}
        <div className="mb-6 select-none pointer-events-none flex justify-center">
          <img 
            src="https://images.www.talentlms.com/wp-content/plugins/talent-blocks/assets/images/brand-icons/roi.svg" 
            alt="Roi icon" 
            width="46" 
            height="46"
            className="block h-11 w-11 object-contain"
          />
        </div>

        {/* Heading */}
        <h2 
          className="text-3xl md:text-4xl lg:text-[40px] font-semibold tracking-tight leading-[1.2] text-[#181E26] max-w-3xl mb-5"
          style={{ fontFamily: "Hornbill, Georgia, serif" }}
        >
          How a team of two built a global training academy in 8 months
        </h2>

        {/* Subtext */}
        <p 
          className="text-base md:text-[16px] font-medium leading-[1.6] text-[#242424] opacity-85 max-w-4xl mb-12"
          style={{ fontFamily: "Axiforma, sans-serif" }}
        >
          With no LMS background, Smartbox built its training academy on TalentLMS in just 8 months. 
          3 years on, Smartbox Academy reaches 12,000+ learners across 37 countries.
        </p>

        {/* VIDEO CONTAINER LAYER TRACK */}
        <div className="w-full max-w-[960px] border-[6px] border-[#FFC82C] rounded-[28px] overflow-hidden bg-black shadow-sm mb-10 relative group">
          <video
            ref={videoRef}
            className="w-full h-auto object-cover block cursor-pointer"
            style={{ aspectRatio: "1280 / 720" }}
            autoPlay
            loop
            muted={isMuted}
            playsInline
            controls 
            src="https://www.talentlms.com/wp-content/uploads/2026/06/smartbox_homepage-preview.mp4"
          />
          
          {/* 
            CUSTOM INTERACTIVE AUDIO TOGGLE HUD:
            Positions an accessible interactive mute trigger button in the upper corner, 
            matching the presentation in SCR-20260702-owpt.jpg.
          */}
          <button 
            onClick={toggleMute}
            type="button"
            className="absolute top-4 right-4 z-30 bg-black/60 hover:bg-black/80 backdrop-blur-sm rounded-full p-2.5 text-white transition-all duration-200 cursor-pointer border border-white/10 active:scale-95"
            aria-label={isMuted ? "Unmute video feedback" : "Mute video audio tracking"}
          >
            {isMuted ? (
              /* Muted Vector Shape Graphic */
              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16">
                <path d="M6.717 3.55A.5.5 0 0 1 7 4v8a.5.5 0 0 1-.812.39L3.825 10.5H1.5A.5.5 0 0 1 1 10V6a.5.5 0 0 1 .5-.5h2.325l2.363-1.89a.5.5 0 0 1 .529-.06zm7.137 2.096a.5.5 0 0 1 0 .708L12.207 8l1.647 1.646a.5.5 0 0 1-.708.708L11.5 8.707l-1.646 1.647a.5.5 0 0 1-.708-.708L10.793 8 9.146 6.354a.5.5 0 1 1 .708-.708L11.5 7.293l1.646-1.647a.5.5 0 0 1 .708 0z"/>
              </svg>
            ) : (
              /* Active Audio Playing Waves Shape Graphic */
              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16">
                <path d="M11.536 14.01A8.473 8.473 0 0 0 14 8c0-2.26-.882-4.315-2.322-5.836a.5.5 0 1 0-.732.682C12.253 4.221 13 6.03 13 8c0 1.97-.747 3.779-2.086 5.154a.5.5 0 1 0 .722.706z"/>
                <path d="M9.77 12.239A6.47 6.47 0 0 0 11 8c0-1.65-.618-3.156-1.635-4.31a.5.5 0 0 0-.749.663C9.488 5.258 10 6.568 10 8c0 1.431-.512 2.742-1.353 3.693a.5.5 0 0 0 .749.662z"/>
                <path d="M6.717 3.55A.5.5 0 0 1 7 4v8a.5.5 0 0 1-.812.39L3.825 10.5H1.5A.5.5 0 0 1 1 10V6a.5.5 0 0 1 .5-.5h2.325l2.363-1.89a.5.5 0 0 1 .529-.06z"/>
              </svg>
            )}
          </button>
        </div>

        {/* Action Link Button Area */}
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