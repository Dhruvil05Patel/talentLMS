"use client";

import Link from "next/link";
import { productsData } from "./navData";

export default function DropdownProducts({ onMouseEnter, onMouseLeave }) {
  return (
    <div
      className="absolute top-full left-0 mt-2 w-[420px] bg-white rounded-2xl shadow-xl border border-gray-100 p-4 z-50 flex flex-col space-y-1"
      onMouseEnter={onMouseEnter}
      onMouseLeave={onMouseLeave}
    >
      {productsData.map((product) => (
        <Link
          key={product.name}
          href={product.url}
          className="flex items-center gap-4 p-3 rounded-xl hover:bg-gray-50 transition-all duration-200 group"
        >
          {/* Brand Logo/Icon Container */}
          <div className="flex items-center justify-center w-12 h-12 rounded-xl border border-gray-100 bg-white shadow-sm shrink-0 group-hover:border-gray-200 transition-colors">
            {/* Checks if it's an image asset path or a fallback emoji */}
            {product.icon.startsWith("/") || product.icon.startsWith("http") ? (
              <img 
                src={product.icon} 
                alt={`${product.name} logo`} 
                className="w-7 h-7 object-contain"
              />
            ) : (
              <span className="text-xl">{product.icon}</span>
            )}
          </div>

          {/* Product Info Text */}
          <div className="flex flex-col">
            <span className="text-[15px] font-semibold text-gray-800 group-hover:text-black transition-colors">
              {product.name}
            </span>
            <span className="text-xs text-gray-500 font-normal mt-0.5">
              {product.description}
            </span>
          </div>
        </Link>
      ))}
    </div>
  );
}