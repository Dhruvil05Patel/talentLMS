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
// Products dropdown data
export const productsData = [
  {
    name: "TalentLMS",
    description: "All‑in‑one LMS for growing businesses",
    url: "/platform",
    icon: "/images/logos/talentlms-icon.png", // Update paths here
  },
  { 
    name: "TalentCards", 
    description: "Mobile training app for teams on the go", 
    url: "/talentcards", 
    icon: "/images/logos/talentcards-icon.png" 
  },
  { 
    name: "eFront", 
    description: "Customizable LMS for enterprises", 
    url: "/efrontlearning", 
    icon: "/images/logos/efront-icon.png" 
  },
  { 
    name: "TalentHR", 
    description: "All‑in‑one HRIS for startups and SMBs", 
    url: "/talenthr", 
    icon: "/images/logos/talenthr-icon.png" 
  },
];

// Platform mega‑menu data (simplified for now)
export const platformData = {
  platform: [
    { label: "Platform overview", description: "See what the platform can do", url: "/platform" },
    { label: "Features", description: "Review core features at a glance", url: "/features" },
    { label: "Integrations", description: "Connect easily with your daily tools", url: "/integrations" },
  ],
  aiFeatures: [
    { label: "AI LMS", description: "The AI LMS to streamline your workflow", url: "/ai‑lms" },
    { label: "TalentCraft – AI course creator", description: "Create quality courses fast with AI", url: "/talentcraft" },
    { label: "Skills – AI skills‑based training", description: "Identify and grow your team's skills", url: "/skills" },
    { label: "Learning Playground", description: "Your team's space to build confidence", url: "/learning‑playground", badge: "NEW" },
  ],
  courseSolutions: [
    { label: "TalentLibrary by TalentLMS", description: "1,000+ short courses to upskill teams", url: "/library" },
    { label: "Exclusive EasyLlama bundle", description: "Trusted U.S. HR compliance in one suite", url: "/course‑solutions/easyllama" },
    { label: "OpenSesame", description: "50,000+ industry‑specific courses", url: "/course‑solutions/opensesame" },
    { label: "Other course providers", description: "Add providers à la carte, pay as you go", url: "/course‑solutions/other‑providers" },
  ],
};

// Solutions dropdown data (simplified)
export const solutionsData = {
  useCases: [
    { label: "Employee training", url: "/solutions/employee‑training‑software" },
    { label: "Onboarding training", url: "/solutions/onboarding‑training‑software" },
    { label: "Partner training", url: "/solutions/channel‑partner‑training‑software" },
    { label: "Compliance training", url: "/solutions/compliance‑training‑software" },
    { label: "Customer training", url: "/solutions/customer‑training‑software" },
    { label: "Cybersecurity training", url: "/solutions/cybersecurity‑training‑software" },
  ],
  industries: [
    { label: "Software", url: "/industries/software" },
    { label: "Manufacturing", url: "/industries/manufacturing" },
    { label: "Healthcare", url: "/industries/healthcare" },
    { label: "Consulting", url: "/industries/consulting" },
    { label: "Financial services", url: "/industries/financial‑services" },
    { label: "Nonprofit", url: "/industries/non‑profit" },
  ],
};

// Customers dropdown data
export const customersData = [
  { name: "Roland", url: "/customers/roland", logo: "/wp-content/uploads/2024/08/Roland_logo.webp" },
  { name: "Smart Buy Glasses", url: "/customers/smartbuyglasses", logo: "/wp-content/uploads/2024/08/smart‑buy‑glasses_logo_1.webp" },
  { name: "Hudl", url: "/customers/hudl", logo: "/wp-content/uploads/2024/08/Hudl_logo.webp" },
  { name: "Rosetta Stone", url: "/customers/rosettastone", logo: "/wp-content/uploads/2024/08/Rosetta‑stone_logo.webp" },
  { name: "Isuzu UTE", url: "/customers/isuzu", logo: "/wp-content/uploads/2024/08/Isuzu‑ute_logo.webp" },
  { name: "Lynk & Co", url: "/customers/lynkco", logo: "/wp-content/uploads/2024/08/Lynk‑_-co_logo.webp" },
];

// Resources dropdown data
export const resourcesData = [
  { label: "Blog", url: "/blog/" },
  { label: "Webinars", url: "/webinars" },
  { label: "Podcast", url: "/podcast", badge: "New episode" },
  { label: "eBooks", url: "/ebooks" },
  { label: "Research", url: "/research", badge: "New report" },
  { label: "Help Center", url: "https://help.talentlms.com/hc/en‑us" },
  { label: "ROI Calculator", url: "/roi‑calculator" },
];

// About us dropdown data
export const aboutData = [
  { label: "About TalentLMS", url: "/about" },
  { label: "Contact us", url: "/contact" },
  { label: "Awards & Recognition", url: "/awards" },
  { label: "Newsroom", url: "/newsroom" },
];
