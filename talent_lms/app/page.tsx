import Navbar from './components/layout/navbar/Navbar';
import Hero from './components/home/Hero';// Import Customers
import TrustedCompanies from './components/home/TrustedCompanies';
import InformationSection from './components/home/InformationSection';
import Quote from './components/home/Quote';
import VideoSection from './components/home/VideoSection';
import Training from './components/home/Training';
import Testimony from './components/home/Testimony';
import Library from './components/home/Library';
import Awards from './components/home/Awards';
import SignupForm from './components/home/SignUpForm';


export default function Home() {
  return (
    <main className="w-full bg-[#f7f7f5] min-h-screen">
      <Navbar />
      <Hero />
      
      {/* Renders beautifully beneath the dashboard mockup frame layer */}
      <TrustedCompanies />
      <InformationSection/>
      <Quote/>
      <VideoSection/>
      <Training/>
      <Testimony/>
      <Library/>
      <Awards/>
      <SignupForm/>
    </main>
  );
}