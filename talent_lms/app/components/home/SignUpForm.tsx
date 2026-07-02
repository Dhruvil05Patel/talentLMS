"use client";

import { useState } from "react";

export default function SignupForm() {
  const [domain, setDomain] = useState("");
  const [email, setEmail] = useState("");
  
  const [isDomainFocused, setIsDomainFocused] = useState(false);
  const [isEmailFocused, setIsEmailFocused] = useState(false);

  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    if (!domain || !email) return;
    
    const targetUrl = `https://www.talentlms.com/create/?client_default_language=en&domain=${encodeURIComponent(domain)}&email=${encodeURIComponent(email)}`;
    window.location.href = targetUrl;
  };

  return (
    <section className="relative w-full bg-[#f7f7f5] pt-16 pb-28 overflow-hidden select-none flex flex-col items-center">
      
      {/* BACKGROUND GRAPHIC VECTOR OBJECT LAYERS */}
      <div className="absolute inset-0 pointer-events-none z-0 opacity-40 lg:opacity-100">
        <svg className="w-full h-full" viewBox="0 0 1440 600" fill="none" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="none">
          <path d="M-100,350 C200,200 400,500 800,280 C1100,120 1300,300 1600,180 L1600,600 L-100,600 Z" fill="#EBF3FE" />
        </svg>
      </div>

      <div className="mx-auto max-w-[1340px] px-6 md:px-12 text-center z-10 flex flex-col items-center relative w-full">
        
        {/* HEADER SUMMARY INTERFACE */}
        <div className="flex flex-col items-center text-center mb-12">
          <h2 
            className="text-3xl md:text-4xl lg:text-[42px] font-semibold tracking-tight leading-[1.2] text-[#181E26] max-w-4xl mb-4"
            style={{ fontFamily: "Hornbill, Georgia, serif" }}
          >
            <span className="text-[#0046AB]">Sign up in seconds.</span> Simplify training forever.
          </h2>
          <p 
            className="text-base md:text-[17px] font-medium text-[#242424] opacity-85"
            style={{ fontFamily: "Axiforma, sans-serif" }}
          >
            Because you deserve a training platform that delivers.
          </p>
        </div>

        {/* INTERACTIVE INPUT REGISTRATION CONTAINER CARD */}
        <form 
          onSubmit={handleSubmit}
          className="w-full max-w-[1100px] bg-white rounded-[32px] border-2 border-[#0046AB] p-6 md:py-10 md:px-12 shadow-[0_15px_40px_-20px_rgba(0,44,98,0.08)]"
        >
          {/* Changed items-stretch to items-center to neatly align elements on the horizontal cross-axis */}
          <div className="w-full flex flex-col lg:flex-row items-center justify-between gap-6">
            
            {/* INPUT FIELD 1: Domain Allocation Container */}
            <div className="w-full flex-1 flex flex-col text-left relative">
              <div 
                className={`
                  w-full h-[60px] rounded-xl bg-[#F1F5F9] px-4 flex items-center justify-between border transition-all duration-200
                  ${isDomainFocused ? "border-[#0046AB] bg-white ring-2 ring-[#0046AB]/10" : "border-transparent"}
                `}
              >
                <div className="relative flex-1 h-full flex flex-col justify-center">
                  <label 
                    htmlFor="domain-input"
                    className={`
                      absolute left-0 font-medium transition-all duration-200 pointer-events-none select-none
                      ${isDomainFocused || domain ? "text-[11px] text-[#0046AB] top-2" : "text-[15px] text-gray-400 top-1/2 -translate-y-1/2"}
                    `}
                    style={{ fontFamily: "Axiforma, sans-serif" }}
                  >
                    Domain name
                  </label>
                  <input
                    id="domain-input"
                    type="text"
                    value={domain}
                    onChange={(e) => setDomain(e.target.value.replace(/\s+/g, "").toLowerCase())}
                    onFocus={() => setIsDomainFocused(true)}
                    onBlur={() => setIsDomainFocused(false)}
                    className="w-full bg-transparent border-none outline-none text-[16px] font-semibold text-[#181E26] pt-4 h-full"
                    autoComplete="off"
                  />
                </div>

                <div className="flex items-center gap-3 shrink-0 ml-2">
                  <div className="group relative cursor-pointer">
                    <svg className="w-5 h-5 text-gray-400 hover:text-[#0046AB] transition-colors" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2.5" strokeLinecap="round" strokeLinejoin="round">
                      <circle cx="12" cy="12" r="10"/>
                      <path d="M9.09 9a3 3 0 0 1 5.83 1c0 2-3 3-3 3"/>
                      <line x1="12" y1="17" x2="12.01" y2="17"/>
                    </svg>
                    <div className="absolute bottom-full left-1/2 -translate-x-1/2 mb-2 w-56 bg-gray-900 text-white text-[11px] font-medium p-2.5 rounded-lg opacity-0 pointer-events-none group-hover:opacity-100 transition-opacity leading-normal shadow-md z-50">
                      For example, enter your company’s name without spaces.
                    </div>
                  </div>
                  <span className="text-[15px] font-bold text-[#181E26] tracking-tight select-none pointer-events-none">
                    .talentlms.com
                  </span>
                </div>
              </div>
            </div>

            {/* INPUT FIELD 2: Email Address Container */}
            <div className="w-full flex-1 flex flex-col text-left relative">
              <div 
                className={`
                  w-full h-[60px] rounded-xl bg-[#F1F5F9] px-4 flex items-center border transition-all duration-200
                  ${isEmailFocused ? "border-[#0046AB] bg-white ring-2 ring-[#0046AB]/10" : "border-transparent"}
                `}
              >
                <div className="relative w-full h-full flex flex-col justify-center">
                  <label 
                    htmlFor="email-input"
                    className={`
                      absolute left-0 font-medium transition-all duration-200 pointer-events-none select-none
                      ${isEmailFocused || email ? "text-[11px] text-[#0046AB] top-2" : "text-[15px] text-gray-400 top-1/2 -translate-y-1/2"}
                    `}
                    style={{ fontFamily: "Axiforma, sans-serif" }}
                  >
                    Email
                  </label>
                  <input
                    id="email-input"
                    type="email"
                    value={email}
                    onChange={(e) => setEmail(e.target.value)}
                    onFocus={() => setIsEmailFocused(true)}
                    onBlur={() => setIsEmailFocused(false)}
                    className="w-full bg-transparent border-none outline-none text-[16px] font-semibold text-[#181E26] pt-4 h-full"
                    autoComplete="off"
                    required
                  />
                </div>
              </div>
            </div>

            {/* ACTION TRIGGER INTERFACE */}
<div className="w-full lg:w-auto flex flex-col items-center justify-center shrink-0">
  <button
    type="submit"
    className="
      h-[60px] w-full lg:w-auto lg:px-14 
      !rounded-2xl                       {/* Forced deeper rounding override */}
      bg-[#007A5A] hover:bg-[#006348] 
      text-[16px] font-bold text-white 
      transition-colors duration-150 whitespace-nowrap shadow-sm
      flex items-center justify-center cursor-pointer
    "
    style={{ fontFamily: "Axiforma, sans-serif" }}
  >
    Get started
  </button>
  
  <p 
    className="text-[12px] font-medium text-gray-400 !mt-4 tracking-wide select-none pointer-events-none" 
    style={{ fontFamily: "Axiforma, sans-serif" }}
  >
    *No credit card required
  </p>
</div>

          </div>
        </form>

      </div>
    </section>
  );
}