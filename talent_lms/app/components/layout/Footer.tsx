"use client";

import Link from "next/link";

export default function Footer() {
  return (
    <footer className="w-full bg-[#002C62] text-white overflow-hidden select-none" style={{ fontFamily: "Axiforma, sans-serif" }}>
      
      {/* MAIN CONTAINER CONTENT SECTION */}
      <div className="mx-auto max-w-[1340px] px-6 md:px-12 w-full pt-16">
        
        {/* =========================================================================
            ROW 1: Identity Branding Logo Header & Social Track Icons
           ========================================================================= */}
        <div className="w-full flex flex-col sm:flex-row items-center justify-between gap-6 pb-12 border-b border-white/10">
          <Link href="/" className="block select-none pointer-events-none transition-opacity hover:opacity-90">
            <img 
              src="https://images.www.talentlms.com/wp-content/themes/talentlms2021/front-end/src/assets/img/footer/logo-white.svg?v=2" 
              alt="TalentLMS Logo" 
              width="161" 
              height="37"
              className="h-[32px] w-auto block object-contain"
            />
          </Link>

          {/* Social Icons Stack */}
          <div className="flex items-center gap-5 md:gap-6">
            <a href="https://www.linkedin.com/company/talentlms/" target="_blank" rel="noopener noreferrer" className="text-white opacity-90 hover:opacity-100 transition-opacity">
              <svg width="18" height="18" viewBox="0 0 17 17" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M16.6361 16.5007V10.6317C16.6361 7.76067 16.0181 5.54967 12.6621 5.54967C12.0324 5.52711 11.4085 5.67571 10.8566 5.97965C10.3047 6.28359 9.84558 6.73149 9.52807 7.27567H9.48107V5.81767H6.29907V16.4997H9.61007V11.2107C9.61007 9.81767 9.87407 8.47167 11.5991 8.47167C13.2991 8.47167 13.3241 10.0607 13.3241 11.3007V16.5007H16.6361Z" fill="currentColor" />
                <path d="M0.908081 5.81868H4.22108V16.5007H0.908081V5.81868Z" fill="currentColor" />
                <path d="M2.56103 0.500673C2.17859 0.499092 1.8043 0.611166 1.48567 0.822672C1.16704 1.03418 0.918432 1.33558 0.771394 1.68862C0.624357 2.04167 0.585521 2.43044 0.659817 2.80559C0.734113 3.18075 0.91819 3.52537 1.18869 3.79573C1.45918 4.06608 1.8039 4.24998 2.1791 4.32408C2.55429 4.39818 2.94304 4.35914 3.29601 4.21192C3.64897 4.0647 3.95025 3.81593 4.16159 3.49719C4.37293 3.17845 4.48481 2.80411 4.48303 2.42167C4.48276 1.9121 4.28015 1.42349 3.91973 1.06326C3.55932 0.703031 3.0706 0.500673 2.56103 0.500673Z" fill="currentColor" />
              </svg>
            </a>
            <a href="https://www.youtube.com/c/Talentlms-learning" target="_blank" rel="noopener noreferrer" className="text-white opacity-90 hover:opacity-100 transition-opacity">
              <svg width="20" height="14" viewBox="0 0 19 13" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M18.5504 2.1714C18.4479 1.79079 18.2475 1.44369 17.969 1.16471C17.6905 0.885728 17.3438 0.684608 16.9634 0.581401C14.6269 0.296889 12.274 0.16927 9.92041 0.199401C7.56721 0.171541 5.21466 0.295464 2.87741 0.5704C2.4979 0.678759 2.15266 0.882955 1.87489 1.16334C1.59713 1.44374 1.39619 1.79088 1.29141 2.1714C1.0358 3.60004 0.911612 5.0491 0.920413 6.5004C0.911061 7.95206 1.03525 9.40149 1.29141 10.8304C1.39451 11.2103 1.59525 11.5565 1.87366 11.8348C2.15208 12.113 2.49848 12.3135 2.87841 12.4164C5.21452 12.7019 7.5671 12.8309 9.92041 12.8024C12.2736 12.8303 14.6262 12.7063 16.9634 12.4314C17.3434 12.3285 17.6897 12.128 17.9682 11.8498C18.2466 11.5715 18.4473 11.2253 18.5504 10.8454C18.8057 9.41639 18.9296 7.967 18.9204 6.5154C18.9376 5.05885 18.8137 3.60406 18.5504 2.1714ZM8.12741 9.1994V3.7994L12.8124 6.4994L8.12741 9.1994Z" fill="currentColor" />
              </svg>
            </a>
            <a href="https://www.instagram.com/talentlms_" target="_blank" rel="noopener noreferrer" className="text-white opacity-90 hover:opacity-100 transition-opacity">
              <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2.2" strokeLinecap="round" strokeLinejoin="round">
                <rect x="2" y="2" width="20" height="20" rx="5" ry="5"></rect>
                <path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"></path>
                <line x1="17.5" y1="6.5" x2="17.51" y2="6.5"></line>
              </svg>
            </a>
            <a href="https://www.facebook.com/talentlms" target="_blank" rel="noopener noreferrer" className="text-white opacity-90 hover:opacity-100 transition-opacity">
              <svg width="12" height="18" viewBox="0 0 9 17" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M7.17599 3.15772H8.63699V0.613724C7.93035 0.535985 7.21988 0.498259 6.50899 0.500724C4.40299 0.500724 2.95999 1.82572 2.95999 4.25972V6.50072H0.635986V9.34472H2.95999V16.5007H5.80899V9.34572H8.03899L8.39399 6.50072H5.80899V4.54172C5.80899 3.71972 6.03099 3.15672 7.17599 3.15672V3.15772Z" fill="currentColor" />
              </svg>
            </a>
            <a href="https://open.spotify.com/show/71FSqDg0a0NFAAX3QGcH3D" target="_blank" rel="noopener noreferrer" className="text-white opacity-90 hover:opacity-100 transition-opacity">
              <svg width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                <circle cx="12" cy="12" r="10" stroke="currentColor" strokeWidth="2"></circle>
                <path d="M7.5 12.0685C8.59944 11.6998 9.77639 11.5 11 11.5C13.0238 11.5 14.9199 12.0465 16.5488 13M18 10C16.1509 8.7383 13.9122 8 11.5 8C9.90307 8 8.38216 8.32358 7 8.90839M15.129 16C13.8927 15.3609 12.4894 15 11.0018 15C10.1819 15 9.38762 15.1096 8.63281 15.315" stroke="currentColor" strokeWidth="2" strokeLinecap="round"></path>
              </svg>
            </a>
          </div>
        </div>

        {/* =========================================================================
            ROW 2: 5-Column Navigation Menu Block Matrix
           ========================================================================= */}
        <div className="flex flex-col md:flex-row items-start justify-between gap-10 mt-14 mb-16 w-full">
          
          {/* COLUMN 1: Expanded Left Column for Trust Badges */}
          <div className="w-full md:basis-[26%] flex flex-col text-left shrink-0">
            <p className="text-[15px] font-bold tracking-tight text-white mb-5 leading-snug">
              Rely on trusted certifications and inclusive design
            </p>
            <ul className="flex flex-col gap-3.5">
              {[
                { img: "icon-shield.svg", text: "ISO/IEC 27001:2022" },
                { img: "icon-key.svg", text: "ISO 9001:2015" },
                { img: "icon4.svg", text: "Accessible", link: "https://www.talentlms.com/accessibility" },
                { img: "icon1.svg", text: "GDPR compliant", link: "https://www.talentlms.com/gdpr" }
              ].map((item, idx) => (
                <li key={`cert-${idx}`} className="flex items-center gap-3 text-[14px] text-white/80 font-medium">
                  <div className="w-[38px] h-[38px] rounded-full border border-white/20 flex items-center justify-center shrink-0 bg-white/5">
                    <img 
                      src={`https://images.www.talentlms.com/wp-content/themes/talentlms2021/front-end/src/assets/img/footer/${item.img}`} 
                      className="w-[18px] h-[18px] object-contain opacity-95"
                      alt="" 
                    />
                  </div>
                  {item.link ? (
                    <a href={item.link} className="hover:text-white transition-colors underline decoration-transparent hover:decoration-white/40 underline-offset-2">{item.text}</a>
                  ) : (
                    <span>{item.text}</span>
                  )}
                </li>
              ))}
            </ul>
          </div>

          {/* COLUMNS 2-5: Dynamic Flexing Navigation Groups */}
          {[
            {
              title: "Platform",
              links: [
                { text: "Overview", href: "/platform" },
                { text: "Features", href: "/features" },
                { text: "Integrations", href: "/integrations" },
                { text: "Mobile apps", href: "/mobile" },
                { text: "Pricing", href: "/prices" },
                { text: "Why TalentLMS", href: "https://www.talentlms.com/why-talentlms" },
                { text: "Get TalentLMS free", href: "https://www.talentlms.com/free-lms" },
                { text: "Roadmap", href: "https://www.talentlms.com/roadmap" }
              ]
            },
            {
              title: "Solutions",
              links: [
                { text: "Use cases", href: "/solutions" },
                { text: "Industries", href: "/industries" },
                { text: "TalentLMS AI", href: "https://www.talentlms.com/ai-lms" },
                { text: "TalentCraft", href: "https://www.talentlms.com/talentcraft" },
                { text: "Skills", href: "https://www.talentlms.com/skills" },
                { text: "TalentLibrary", href: "https://www.talentlms.com/library/" },
                { text: "Course Solutions", href: "/course-solutions" }
              ]
            },
            {
              title: "Resources",
              links: [
                { text: "Blog", href: "/blog/" },
                { text: "Webinars", href: "https://www.talentlms.com/webinars" },
                { text: "Podcast", href: "https://www.talentlms.com/podcast" },
                { text: "eBooks", href: "/ebooks" },
                { text: "Research by TalentLMS", href: "https://www.talentlms.com/research" },
                { text: "What is an LMS?", href: "/what-is-an-lms" },
                { text: "ROI Calculator", href: "/roi-calculator" }
              ]
            },
            {
              title: "Company",
              links: [
                { text: "About us", href: "/about" },
                { text: "Our customers", href: "/customers" },
                { text: "Customer awards", href: "https://www.talentlms.com/training-excellence-awards" },
                { text: "Support services", href: "/customer-success" },
                { text: "Innovation hub", href: "https://www.talentlms.com/labs" },
                { text: "Affiliates", href: "/affiliates" },
                { text: "Contact us", href: "/contact" }
              ]
            }
          ].map((column, idx) => (
            <div key={`col-${idx}`} className="flex-1 flex flex-col text-left min-w-[120px]">
              <p className="text-[15px] font-bold tracking-tight text-white mb-5">
                {column.title}
              </p>
              <ul className="flex flex-col gap-3.5">
                {column.links.map((link, lIdx) => (
                  <li key={`link-${lIdx}`}>
                    <a 
                      href={link.href} 
                      className="text-[14px] text-white/70 font-medium hover:text-white transition-colors block leading-none"
                    >
                      {link.text}
                    </a>
                  </li>
                ))}
              </ul>
            </div>
          ))}
        </div>

        {/* =========================================================================
            ROW 3: Epignosis Brands Ecosystem Pill Badges
           ========================================================================= */}
        <div className="w-full border-t border-white/10 pt-10 pb-14 flex flex-col md:flex-row items-start md:items-center gap-6">
          <p className="text-[15px] font-bold tracking-tight text-white shrink-0">
            Discover Epignosis software
          </p>
          <div className="flex flex-wrap items-center gap-3">
            {[
              { src: "https://images.www.talentlms.com/wp-content/themes/talentlms2021/front-end/src/assets/img/logo.svg?v=2", active: true, w: "w-[110px]", href: "#" },
              { src: "https://images.www.talentlms.com/wp-content/themes/talentlms2021/front-end/src/assets/img/footer/logo-efront.png", active: false, w: "w-[64px]", href: "https://www.efrontlearning.com/" },
              { src: "https://images.www.talentlms.com/wp-content/themes/talentlms2021/front-end/src/assets/img/footer/logo-talentcards.png", active: false, w: "w-[105px]", href: "https://www.talentcards.com/" },
              { src: "https://images.www.talentlms.com/wp-content/themes/talentlms2021/front-end/src/assets/img/footer/logo-talentHR.png", active: false, w: "w-[85px]", href: "https://www.talenthr.io/" }
            ].map((brand, idx) => (
              <a 
                key={`brand-${idx}`}
                href={brand.href}
                target={brand.active ? "_self" : "_blank"}
                rel="noopener noreferrer"
                className={`
                  h-10 px-5 flex items-center justify-center rounded-full transition-all duration-200
                  ${brand.active ? "bg-white text-white" : "bg-white/5 text-white hover:opacity-100 hover:bg-white/10"}
                `}
              >
                <img 
                  src={brand.src} 
                  alt="" 
                  className={`${brand.w} h-auto object-contain block ${brand.active ? "filter brightness-100" : "invert brightness-0"}`}
                />
              </a>
            ))}
          </div>
        </div>

      </div>

      {/* =========================================================================
          ROW 4: Base Utility Strip Layout Layer
         ========================================================================= */}
      <div className="w-full bg-[#032249] py-6 text-white text-[13px] font-medium border-t border-white/5">
        <div className="mx-auto max-w-[1340px] px-6 md:px-12 w-full flex flex-col md:flex-row items-center justify-between gap-4">
          <ul className="flex flex-wrap items-center justify-center md:justify-start gap-x-6 gap-y-2">
            {[
              { text: "Knowledge Base", href: "https://help.talentlms.com/" },
              { text: "FAQ", href: "/faq" },
              { text: "Privacy", href: "/privacy" },
              { text: "Security", href: "/security" },
              { text: "Terms of Service", href: "/terms" }
            ].map((help, idx) => (
              <li key={`help-link-${idx}`}>
                <a href={help.href} className="hover:text-white transition-colors">
                  {help.text}
                </a>
              </li>
            ))}
          </ul>

          <div>
            © <a href="https://www.epignosishq.com" target="_blank" rel="noopener noreferrer" className="hover:text-white transition-colors">Epignosis</a>. All rights reserved.
          </div>
        </div>
      </div>

    </footer>
  );
}