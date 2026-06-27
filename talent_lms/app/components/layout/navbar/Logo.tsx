import Link from "next/link";

export default function Logo() {
  return (
    <Link href="/" className="flex items-center gap-2 shrink-0">
      {/* TalentLMS Orange Icon Box */}
      <div className="h-9 w-9 rounded-xl bg-[#FF6B00] flex items-center justify-center text-white font-black text-xl tracking-tighter shadow-sm">
        t
      </div>
      {/* Brand Text */}
      <span className="text-[22px] font-extrabold tracking-tight text-[#0A1E43]">
        talentlms
      </span>
    </Link>
  );
}