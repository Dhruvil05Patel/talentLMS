"use client";

import Link from "next/link";
import { customersData } from "./navData";

export default function DropdownCustomers({ onMouseEnter, onMouseLeave }) {
  return (
    <div
      className="absolute top-full left-1/2 -translate-x-1/2 mt-2 w-[720px] bg-white rounded-2xl shadow-xl border border-gray-100 p-6 z-50 grid grid-cols-12 gap-6"
      onMouseEnter={onMouseEnter}
      onMouseLeave={onMouseLeave}
    >
      {/* LEFT COLUMN: Customer Case Study List Links (Grid span 6) */}
      <div className="col-span-6 flex flex-col justify-between min-h-[360px]">
        <ul className="space-y-1">
          {customersData.map((customer) => (
            <li key={customer.name}>
              <Link
                href={customer.url}
                className="flex items-center gap-4 p-2 rounded-xl hover:bg-gray-50 transition-colors duration-200 group"
              >
                {/* Brand Logo Container Ring */}
                <div className="flex items-center justify-center w-11 h-11 rounded-xl border border-gray-100 bg-white shadow-sm shrink-0 group-hover:border-gray-200 p-2 overflow-hidden">
                  <img
                    src={customer.logo}
                    alt={`${customer.name} logo`}
                    className="w-full h-full object-contain filter grayscale group-hover:grayscale-0 transition-all duration-200"
                  />
                </div>

                {/* Brand Label */}
                <span className="text-[14px] font-bold text-gray-800 group-hover:text-black transition-colors">
                  {customer.name}
                </span>
              </Link>
            </li>
          ))}
        </ul>

        {/* Bottom Navigation Anchor */}
        <div className="pt-2 pl-2">
          <Link
            href="/customers"
            className="inline-flex items-center text-[13px] font-bold text-gray-900 hover:text-black transition-colors"
          >
            See all case studies <span className="ml-1.5 text-base leading-none">→</span>
          </Link>
        </div>
      </div>

      {/* RIGHT COLUMN: Customer Success Stories Promo Card (Grid span 6) */}
      <div className="col-span-6 border-l border-gray-100 pl-6">
        <div className="bg-gray-50/50 rounded-2xl p-4 border border-gray-50 flex flex-col h-full justify-between">
          <div>
            {/* Network Bubble Logo Graphic Container */}
            <div className="relative w-full h-40 bg-white border border-gray-100 rounded-xl overflow-hidden mb-4 flex items-center justify-center p-2 shadow-inner">
              <img
                src="/images/customer-network-cloud.png" // Replace with your cloud bubble brand graphic asset
                alt="Trusted by Global Teams"
                className="max-w-full max-h-full object-contain"
              />
            </div>

            {/* Typography Content */}
            <h4 className="text-base font-bold text-gray-900 mb-1">
              Customer success stories
            </h4>
            <p className="text-xs text-gray-500 leading-relaxed mb-4">
              Trusted by 70,000+ teams to achieve training success. Ready to create your own story?
            </p>
          </div>

          {/* Action Button Link */}
          <Link
            href="/customers/stories"
            className="w-full inline-flex justify-center items-center py-2.5 px-4 rounded-xl bg-gray-100 text-gray-900 text-xs font-semibold hover:bg-gray-200 transition-colors duration-200"
          >
            Read more
          </Link>
        </div>
      </div>
    </div>
  );
}