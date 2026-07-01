import Navbar from './components/layout/navbar/Navbar';
import Hero from './components/home/Hero';// Import Customers
import TrustedCompanies from './components/home/TrustedCompanies';
import InformationSection from './components/home/InformationSection';

export default function Home() {
  return (
    <main className="w-full bg-[#f7f7f5] min-h-screen">
      <Navbar />
      <Hero />
      
      {/* Renders beautifully beneath the dashboard mockup frame layer */}
      <TrustedCompanies />
      <InformationSection/>
    </main>
  );
}