import Navbar from '../components/layout/navbar/Navbar';
import Footer from '../components/layout/Footer';

export default function NudgeBotPage() {
  return (
    <main className="w-full bg-[#f7f7f5] min-h-screen">
      <Navbar />

      {/* Main Content */}
      <div className="mx-auto max-w-[1440px] px-8 pt-20 pb-24">
        <div className="max-w-4xl mx-auto">
          <h1 className="text-4xl md:text-5xl font-bold text-gray-900 mb-6">
            NudgeBot
          </h1>
          <p className="text-lg text-gray-600 mb-8">
            Smart AI-powered nudges and reminders to keep your team learning and achieving their goals.
          </p>

          <div className="bg-white rounded-2xl border border-gray-100 p-8 mb-8">
            <h2 className="text-2xl font-bold text-gray-900 mb-4">Key Features</h2>
            <ul className="space-y-3 text-gray-700">
              <li className="flex items-start gap-3">
                <span className="text-green-500 font-bold">•</span>
                <span>Personalized learning nudges based on individual progress</span>
              </li>
              <li className="flex items-start gap-3">
                <span className="text-green-500 font-bold">•</span>
                <span>Automated reminders for upcoming courses and deadlines</span>
              </li>
              <li className="flex items-start gap-3">
                <span className="text-green-500 font-bold">•</span>
                <span>AI-powered motivation and engagement boosters</span>
              </li>
              <li className="flex items-start gap-3">
                <span className="text-green-500 font-bold">•</span>
                <span>Collaboration prompts and team challenges</span>
              </li>
            </ul>
          </div>

          <div className="bg-white rounded-2xl border border-gray-100 p-8">
            <h2 className="text-2xl font-bold text-gray-900 mb-4">How It Works</h2>
            <div className="grid md:grid-cols-3 gap-6">
              <div className="text-center">
                <div className="w-12 h-12 bg-green-100 rounded-full flex items-center justify-center mx-auto mb-3">
                  <span className="text-green-600 font-bold">1</span>
                </div>
                <p className="text-sm text-gray-600">Analyze learning patterns</p>
              </div>
              <div className="text-center">
                <div className="w-12 h-12 bg-green-100 rounded-full flex items-center justify-center mx-auto mb-3">
                  <span className="text-green-600 font-bold">2</span>
                </div>
                <p className="text-sm text-gray-600">Generate personalized nudges</p>
              </div>
              <div className="text-center">
                <div className="w-12 h-12 bg-green-100 rounded-full flex items-center justify-center mx-auto mb-3">
                  <span className="text-green-600 font-bold">3</span>
                </div>
                <p className="text-sm text-gray-600">Deliver at optimal moments</p>
              </div>
            </div>
          </div>
        </div>
      </div>

      <Footer />
    </main>
  );
}