'use client';

import Link from "next/link";
import { FormEvent } from "react";
import { useContext, useState } from "react";
import { LayoutDashboard, LogOut, UserRoundPen, X } from "lucide-react";
import { AuthContext } from "@/components/AuthProvider";

export default function CTAButtons() {
  const { user, isAuthenticated, changeName, signOut } = useContext(AuthContext);
  const [open, setOpen] = useState(false);
  const [settingsOpen, setSettingsOpen] = useState(false);
  const [name, setName] = useState(user?.name || "");
  const [saving, setSaving] = useState(false);
  const [error, setError] = useState<string | null>(null);

  const displayName = user?.name || user?.email || "Profile";
  const initial = displayName.trim().charAt(0).toUpperCase() || "U";

  const openSettings = () => {
    setName(user?.name || "");
    setError(null);
    setSettingsOpen(true);
    setOpen(false);
  };

  const handleChangeName = async (event: FormEvent) => {
    event.preventDefault();
    const nextName = name.trim();
    if (!nextName) {
      setError("Name is required.");
      return;
    }

    setSaving(true);
    setError(null);
    try {
      await changeName(nextName);
      setSettingsOpen(false);
    } catch (err) {
      setError(err instanceof Error ? err.message : "Failed to save name.");
    } finally {
      setSaving(false);
    }
  };

  const handleLogout = () => {
    signOut();
    setOpen(false);
  };

  if (isAuthenticated) {
    return (
      <>
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
              onClick={openSettings}
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
      {settingsOpen ? (
        <div className="fixed inset-0 z-[100] flex items-center justify-center bg-black/40 px-4">
          <div className="w-full max-w-md rounded-lg bg-white p-6 shadow-2xl">
            <div className="flex items-center justify-between">
              <h2 className="text-lg font-semibold text-gray-900">Profile Settings</h2>
              <button
                type="button"
                onClick={() => setSettingsOpen(false)}
                className="rounded-full p-2 text-gray-500 hover:bg-gray-100 hover:text-gray-900"
                aria-label="Close profile settings"
              >
                <X size={18} />
              </button>
            </div>

            {error ? (
              <div className="mt-4 rounded-lg bg-red-50 px-3 py-2 text-sm text-red-700">
                {error}
              </div>
            ) : null}

            <form onSubmit={handleChangeName} className="mt-5 space-y-4">
              <div>
                <label htmlFor="profile-name" className="mb-2 block text-sm font-medium text-gray-800">
                  Name
                </label>
                <input
                  id="profile-name"
                  value={name}
                  onChange={(event) => setName(event.target.value)}
                  className="w-full rounded-lg border border-gray-300 px-3 py-2 text-sm outline-none focus:border-[#007a55] focus:ring-2 focus:ring-[#007a55]/20"
                />
              </div>

              <div className="flex justify-end gap-3">
                <button
                  type="button"
                  onClick={() => setSettingsOpen(false)}
                  className="rounded-lg border border-gray-300 px-4 py-2 text-sm font-medium text-gray-700 hover:bg-gray-50"
                >
                  Cancel
                </button>
                <button
                  type="submit"
                  disabled={saving}
                  className="rounded-lg bg-[#007a55] px-4 py-2 text-sm font-semibold text-white disabled:cursor-not-allowed disabled:opacity-70"
                >
                  {saving ? "Saving..." : "Save"}
                </button>
              </div>
            </form>
          </div>
        </div>
      ) : null}
      </>
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
