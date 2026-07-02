"use client";

const badgesData = [
  {
    src: "https://images.www.talentlms.com/wp-content/uploads/2026/01/capterra_shortlist-2026.webp",
    alt: "Capterra Shortlist 2026 Badge",
    width: "133px",
  },
  {
    src: "https://images.www.talentlms.com/wp-content/uploads/2026/01/Best-Learning-Management-Systems-2026.webp",
    alt: "Best Learning Management Systems 2026 Badge",
    width: "134px",
  },
  {
    src: "https://images.www.talentlms.com/wp-content/uploads/2026/01/Top-Employee-Training-LMS-Platforms-In-2026.webp",
    alt: "Top Employee Training LMS Platforms in 2026 Badge",
    width: "133px",
  },
  {
    src: "https://images.www.talentlms.com/wp-content/uploads/2026/01/Leading-AI-Innovation-for-Learning-Skills-Development-2026.webp",
    alt: "Leading AI Innovation for Learning and Skills Development 2026 Badge",
    width: "133px",
  },
  {
    src: "https://images.www.talentlms.com/wp-content/uploads/2026/01/CorporateLearningManagementSystems_Leader_Leader.webp",
    alt: "G2 Corporate Learning Management Systems Leader Badge",
    width: "101px",
  },
  {
    src: "https://images.www.talentlms.com/wp-content/uploads/2026/01/TrainingManagementSystem_HighPerformer.webp",
    alt: "G2 Training Management System High Performer Badge",
    width: "101px",
  },
];

export default function Awards() {
  return (
    <section className="w-full bg-[#f7f7f5] pt-16 pb-20 overflow-hidden select-none flex flex-col items-center">
      {/* HEADER SECTION PANEL */}
      <div className="mx-auto max-w-[1340px] px-6 md:px-12 text-center flex flex-col items-center mb-12">
        {/* Title Heading: Styled in premium Hornbill */}
        <h2 
          className="text-3xl md:text-4xl lg:text-[40px] font-semibold tracking-tight leading-[1.2] text-[#181E26] mb-4"
          style={{ fontFamily: "Hornbill, Georgia, serif" }}
        >
          Every award is a win—for you
        </h2>

        {/* Supporting Subtext: Styled in Axiforma */}
        <p 
          className="text-base md:text-[16px] font-medium text-[#242424] opacity-85"
          style={{ fontFamily: "Axiforma, sans-serif" }}
        >
          Awards are good. Results are even better. At TalentLMS, we aim for both.
        </p>
      </div>

      {/* BADGES DISPLAY GRID INLINE TRACK */}
      <div className="w-full max-w-[1160px] px-6 md:px-12 flex flex-wrap items-center justify-center gap-10 md:gap-14 lg:gap-16 mb-12">
        {badgesData.map((badge, idx) => (
          <div 
            key={`award-badge-${idx}`}
            className="flex justify-center items-center relative transition-transform duration-300 hover:scale-[1.05]"
          >
            {/* Tailored subtle drop shadow filter layer explicitly mapping the 
              'is-style-shadow-underneath' requirement safely below transparency alpha nodes
            */}
            <img
              src={badge.src}
              alt={badge.alt}
              className="h-auto block object-contain filter drop-shadow-[0_12px_20px_rgba(0,0,0,0.08)] pointer-events-none select-none"
              style={{ width: badge.width }}
              loading="lazy"
            />
          </div>
        ))}
      </div>

      {/* FOOTNOTE DISCLAIMER MARKER */}
      <div className="w-full text-center px-6">
        <p 
          className="text-[12px] md:text-[13px] font-medium text-gray-500 italic tracking-wide"
          style={{ fontFamily: "Axiforma, sans-serif" }}
        >
          *Recognized by independent software review sites as an eLearning industry leader.
        </p>
      </div>
    </section>
  );
}