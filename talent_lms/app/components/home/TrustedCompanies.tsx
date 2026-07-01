"use client";

// Logo data structure directly extracted from the provided WordPress HTML section layout references
const marqueeLogos = [
  { name: "Google", src: "https://images.www.talentlms.com/wp-content/uploads/2023/07/Google.png" },
  { name: "Amazon", src: "https://images.www.talentlms.com/wp-content/uploads/2023/04/amazon-1.png" },
  { name: "Meta", src: "https://images.www.talentlms.com/wp-content/uploads/2023/04/Meta-1.png" },
  { name: "Pepsico", src: "https://images.www.talentlms.com/wp-content/uploads/2023/07/pepsico.png" },
  { name: "PwC", src: "https://images.www.talentlms.com/wp-content/uploads/2023/04/pwc.png" },
  { name: "Roland", src: "https://images.www.talentlms.com/wp-content/uploads/2023/04/Roland.png" },
  { name: "Isuzu", src: "https://images.www.talentlms.com/wp-content/uploads/2020/12/isuzu@2x.png" },
  { name: "Oracle", src: "https://images.www.talentlms.com/wp-content/uploads/2023/04/oracle.png" },
];

export default function TrustedCompanies() {
  return (
    <section className="w-full bg-[#f7f7f5] py-12 overflow-hidden flex flex-col items-center justify-center select-none pointer-events-none">

      {/* Main Structural Continuous Track Container */}
      <div className="w-full relative max-w-[1600px] flex overflow-hidden">
        
        {/* Soft blur transparent vignette edge fading left and right side walls */}
        <div className="absolute top-0 left-0 w-24 h-full bg-gradient-to-r from-[#f7f7f5] to-transparent z-10" />
        <div className="absolute top-0 right-0 w-24 h-full bg-gradient-to-l from-[#f7f7f5] to-transparent z-10" />

        {/* 
          Marquee Track Stack Group 1:
          Continuously slides left using the global keyframes animation loop.
          Hover pauses are completely stripped so rotation never breaks.
        */}
        <div className="flex gap-16 items-center shrink-0 animate-[marquee_45s_linear_infinite] pr-16">
          {marqueeLogos.map((logo, idx) => (
            <div 
              key={`track1-${logo.name}-${idx}`} 
              className="flex items-center justify-center h-[70px] w-[140px] relative"
            >
              <img
                src={logo.src}
                alt={`${logo.name} logo`}
                className="max-h-[38px] max-w-full object-contain"
              />
            </div>
          ))}
        </div>

        {/* 
          Marquee Track Stack Group 2 (The Cloned Loop Bridge):
          Maintains the exact same clean, native color profile layout.
        */}
        <div aria-hidden="true" className="flex gap-16 items-center shrink-0 animate-[marquee_45s_linear_infinite] pr-16">
          {marqueeLogos.map((logo, idx) => (
            <div 
              key={`track2-${logo.name}-${idx}`} 
              className="flex items-center justify-center h-[70px] w-[140px] relative"
            >
              <img
                src={logo.src}
                alt={`${logo.name} logo`}
                className="max-h-[38px] max-w-full object-contain"
              />
            </div>
          ))}
        </div>

      </div>
    </section>
  );
}