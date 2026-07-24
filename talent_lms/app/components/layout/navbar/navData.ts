export interface NavItem {
  title: string;
  href?: string;
  hasDropdown?: boolean;
}

// Main navigation items
export const navItems: NavItem[] = [
  { title: "Products", href: "", hasDropdown: true },
  { title: "Platform", href: "", hasDropdown: true },
  { title: "Pricing", href: "/pricing" },
  { title: "Solutions", href: "", hasDropdown: true },
  { title: "Customers", href: "", hasDropdown: true },
  { title: "Resources", href: "", hasDropdown: true },
  { title: "About us", href: "", hasDropdown: true },
];

// ----- Data for each dropdown ----- //

// Products dropdown data
export const productsData = [
  {
    name: "TalentLMS",
    description: "All‑in‑one LMS for growing businesses",
    url: "/platform",
    icon: "/images/logos/talent.svg",
  },
  { 
    name: "TalentCards", 
    description: "Mobile training app for teams on the go", 
    url: "/talentcards", 
    icon: "/images/logos/talent\ cards.svg" 
  },
  { 
    name: "eFront", 
    description: "Customizable LMS for enterprises", 
    url: "/efrontlearning", 
    icon: "/images/logos/efront.svg" 
  },
  { 
    name: "TalentHR", 
    description: "All‑in‑one HRIS for startups and SMBs", 
    url: "/talenthr", 
    icon: "/images/logos/talenthr-icon.svg" 
  },
];

// Platform mega‑menu data (simplified for now)
export const platformData = {
  platform: [
    { label: "Platform overview", description: "See what the platform can do", url: "/platform", icon: "/images/navbar/platform/platform overview.svg" },
    { label: "Features", description: "Review core features at a glance", url: "/features", icon: "/images/navbar/platform/features.svg" },
    { label: "Integrations", description: "Connect easily with your daily tools", url: "/integrations", icon: "/images/navbar/platform/integrations.svg" },
  ],
  aiFeatures: [
    { label: "AI LMS", description: "The AI LMS to streamline your workflow", url: "/ai‑lms", icon: "/images/navbar/platform/ai-lms.svg" },
    { label: "TalentCraft – AI course creator", description: "Create quality courses fast with AI", url: "/talentcraft", icon: "/images/navbar/platform/talentcraft.svg" },
    { label: "Skills – AI skills‑based training", description: "Identify and grow your team's skills", url: "/skills", icon: "/images/navbar/platform/skills.svg" },
    { label: "Learning Playground", description: "Your team's space to build confidence", url: "/learning‑playground", badge: "NEW", icon: "/images/navbar/platform/learning playground.svg" },
  ],
  courseSolutions: [
    { label: "TalentLibrary by TalentLMS", description: "1,000+ short courses to upskill teams", url: "/library", icon: "/images/navbar/platform/talentlibrary.svg" },
    { label: "Exclusive EasyLlama bundle", description: "Trusted U.S. HR compliance in one suite", url: "/course‑solutions/easyllama", icon: "/images/navbar/platform/easyllama.svg" },
    { label: "OpenSesame", description: "50,000+ industry‑specific courses", url: "/course‑solutions/opensesame", icon: "/images/navbar/platform/opensesame.svg" },
    { label: "Other course providers", description: "Add providers à la carte, pay as you go", url: "/course‑solutions/other‑providers", icon: "/images/navbar/platform/othercourseprovider.svg" },
  ],
};

// Solutions dropdown data (simplified)
export const solutionsData = {
  useCases: [
    { label: "Employee training", url: "/solutions/employee‑training‑software", icon: "/images/navbar/solution/1.svg" },
    { label: "Onboarding training", url: "/solutions/onboarding‑training‑software", icon: "/images/navbar/solution/2.svg" },
    { label: "Partner training", url: "/solutions/channel‑partner‑training‑software", icon: "/images/navbar/solution/3.svg" },
    { label: "Compliance training", url: "/solutions/compliance‑training‑software", icon: "/images/navbar/solution/4.svg" },
    { label: "Customer training", url: "/solutions/customer‑training‑software", icon: "/images/navbar/solution/5.svg" },
    { label: "Cybersecurity training", url: "/solutions/cybersecurity‑training‑software", icon: "/images/navbar/solution/6.svg" },
  ],
  industries: [
    { label: "Software", url: "/industries/software", icon: "/images/navbar/solution/7.svg" },
    { label: "Manufacturing", url: "/industries/manufacturing", icon: "/images/navbar/solution/8.svg" },
    { label: "Healthcare", url: "/industries/healthcare", icon: "/images/navbar/solution/9.svg" },
    { label: "Consulting", url: "/industries/consulting", icon: "/images/navbar/solution/10.svg" },
    { label: "Financial services", url: "/industries/financial‑services", icon: "/images/navbar/solution/11.svg" },
    { label: "Nonprofit", url: "/industries/non‑profit", icon: "/images/navbar/solution/12.svg" },
  ],
  aiSolution: [
    { label: "AI Progress Summarizer", url: "/ai-progress-summarizer", icon: "/images/navbar/solution/1.svg" },
    { label: "NudgeBot", url: "/solutions/ai-solutions/nudge-bot", icon: "/images/navbar/solution/2.svg" },
  ],
};

// Customers dropdown data
export const customersData = [
  { name: "Roland", url: "/customers/roland", logo: "/images/logos/Roland_logo.webp" },
  { name: "Smart Buy Glasses", url: "/customers/smartbuyglasses", logo: "/images/logos/smart-buy-glasses_logo_1.webp" },
  { name: "Hudl", url: "/customers/hudl", logo: "/images/logos/Hudl_logo.webp" },
  { name: "Rosetta Stone", url: "/customers/rosettastone", logo: "/images/logos/Rosetta-stone_logo.webp" },
  { name: "Isuzu UTE", url: "/customers/isuzu", logo: "/images/logos/Isuzu-ute_logo.webp" },
  { name: "Lynk & Co", url: "/customers/lynkco", logo: "/images/logos/Lynk-_-co_logo.webp" },
];

// Resources dropdown data
export const resourcesData = [
  { label: "Blog", url: "/blog/", icon: "/images/navbar/resources/blog.svg" },
  { label: "Webinars", url: "/webinars", icon: "/images/navbar/resources/webinar.svg" },
  { label: "Podcast", url: "/podcast", badge: "New episode", icon: "/images/navbar/resources/podcast.svg" },
  { label: "eBooks", url: "/ebooks", icon: "/images/navbar/resources/ebooks.svg" },
  { label: "Research", url: "/research", badge: "New report", icon: "/images/navbar/resources/research.svg" },
  { label: "Help Center", url: "https://help.talentlms.com/hc/en‑us", icon: "/images/navbar/resources/help.svg" },
  { label: "ROI Calculator", url: "/roi‑calculator", icon: "/images/navbar/resources/roi.svg" },
];

// About us dropdown data
export const aboutData = [
  { label: "About TalentLMS", url: "/about", icon: "/images/navbar/about/1-1.svg" },
  { label: "Contact us", url: "/contact", icon: "/images/navbar/about/2-1.svg" },
  { label: "Awards & Recognition", url: "/awards", icon: "/images/navbar/about/3-1.svg" },
  { label: "Newsroom", url: "/newsroom", icon: "/images/navbar/about/4-1.svg" },
];
