import Link from "next/link";
import { ChevronDown } from "lucide-react";
import { navItems } from "./navData";

export default function DesktopMenu() {
  return (
    <nav className="hidden lg:flex items-center gap-8">
      {navItems.map((item) => (
        <Link
          key={item.title}
          href={item.href}
          className="flex items-center gap-1 text-[16px] font-medium text-[#202124] transition-colors hover:text-black"
        >
          {item.title}

          {item.hasDropdown && (
            <ChevronDown size={15} strokeWidth={2} />
          )}
        </Link>
      ))}
    </nav>
  );
}