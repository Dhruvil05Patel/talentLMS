import Link from "next/link";

export default function CTAButtons() {
  return (
    <div className="hidden lg:flex items-center gap-5 shrink-0 ml-auto">
      {/* Login Link */}
      <Link
        href="/login"
        className="text-[15px] font-bold text-gray-900 hover:text-[#FF6B00] transition-colors whitespace-nowrap"
      >
        Login
      </Link>

      {/* Standalone Vertical Divider Line */}
      <div className="h-6 w-[1px] bg-gray-200 mx-1 shrink-0" />

      {/* Request a demo Button */}
      <button
      className="
      h-[44px]
      rounded-full
      border
      border-black
      px-8
      text-[15px]
      font-semibold
    text-black
    hover:bg-black
    hover:text-white
    transition-all
    duration-200
    whitespace-nowrap
  "
>
  Request a demo
</button>

      {/* Sign up Button */}
      <button
        className="
          h-[44px]
          rounded-full
          bg-[#007a55]
          px-6
          text-[15px]
          font-bold
          text-white
          hover:bg-[#006446]
          transition-all
          duration-200
          whitespace-nowrap
        "
      >
        Sign up
      </button>
    </div>
  );
}