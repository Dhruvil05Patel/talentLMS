'use client';

import Link from "next/link";
import { useContext, useState } from "react";
import { LayoutDashboard, LogOut, UserRoundPen } from "lucide-react";
import { AuthContext } from "@/components/AuthProvider";

export default function CTAButtons() {
  const { user, isAuthenticated, changeName, signOut } = useContext(AuthContext);
  const [open, setOpen] = useState(false);

  const displayName = user?.name || user?.email || "Profile";
  const initial = displayName.trim().charAt(0).toUpperCase() || "U";

  const handleChangeName = async () => {
    const nextName = window.prompt("Change name", user?.name || "");
    if (nextName?.trim()) {
      await changeName(nextName);
    }
    setOpen(false);
  };

  const handleLogout = () => {
    signOut();
    setOpen(false);
  };

  if (isAuthenticated) {
    return (
      <div className="relative hidden lg:flex items-center shrink-0 ml-auto">
        <button
          type="button"
          onClick={() => setOpen((value) => !value)}
          className="flex h-11 w-11 items-center justify-center rounded-full bg-[#007a55] text-[16px] font-bold text-white transition-colors hover:bg-[#006446]"
          aria-label="Open profile menu"
          aria-expanded={open}
        >
          {initial}
        </button>

        {open ? (
          <div className="absolute right-0 top-14 z-50 w-64 overflow-hidden rounded-lg border border-gray-200 bg-white shadow-xl">
            <div className="border-b border-gray-100 px-4 py-3">
              <div className="flex items-center gap-3">
                <div className="flex h-10 w-10 items-center justify-center rounded-full bg-[#007a55] text-sm font-bold text-white">
                  {initial}
                </div>
                <div className="min-w-0">
                  <p className="truncate text-sm font-semibold text-gray-900">{displayName}</p>
                  <p className="truncate text-xs text-gray-500">{user?.email}</p>
                </div>
              </div>
            </div>

            <Link
              href="/ai-progress-summarizer"
              onClick={() => setOpen(false)}
              className="flex items-center gap-3 px-4 py-3 text-sm font-medium text-gray-800 hover:bg-gray-50"
            >
              <LayoutDashboard size={17} />
              Dashboard
            </Link>

            <button
              type="button"
              onClick={handleChangeName}
              className="flex w-full items-center gap-3 px-4 py-3 text-left text-sm font-medium text-gray-800 hover:bg-gray-50"
            >
              <UserRoundPen size={17} />
              Change Name
            </button>

            <button
              type="button"
              onClick={handleLogout}
              className="flex w-full items-center gap-3 px-4 py-3 text-left text-sm font-medium text-red-600 hover:bg-red-50"
            >
              <LogOut size={17} />
              Logout
            </button>
          </div>
        ) : null}
      </div>
    );
  }

  return (
    <div className="hidden lg:flex items-center gap-5 shrink-0 ml-auto">
      <Link
        href="/login"
        className="text-[15px] font-bold text-gray-900 hover:text-[#FF6B00] transition-colors whitespace-nowrap"
      >
        Login
      </Link>

      <div className="h-6 w-[1px] bg-gray-200 mx-1 shrink-0" />

      <Link
        href="/login"
        className="h-[44px] rounded-full border border-black px-8 text-[15px] font-semibold text-black hover:bg-black hover:text-white transition-all duration-200 whitespace-nowrap inline-flex items-center"
      >
        Request a demo
      </Link>

      <Link
        href="/login/signup"
        className="h-[44px] rounded-full bg-[#007a55] px-6 text-[15px] font-bold text-white hover:bg-[#006446] transition-all duration-200 whitespace-nowrap inline-flex items-center"
      >
        Sign up
      </Link>
    </div>
  );
}
