import Navbar from '../components/layout/navbar/Navbar';
import Footer from '../components/layout/Footer';

export default function AISummerizerPage() {
  return (
    <main className="w-full bg-[#f7f7f5] min-h-screen">
      <Navbar />

      {/* Main Content */}
      <div className="mx-auto max-w-[1440px] px-8 pt-20 pb-24">
        <div className="max-w-4xl mx-auto">
          <h1 className="text-4xl md:text-5xl font-bold text-gray-900 mb-6">
            AI Progress Summarizer
          </h1>
          <p className="text-lg text-gray-600 mb-8">
            Automatically summarize learning progress and generate insights with AI-powered analytics.
          </p>

          <div className="bg-white rounded-2xl border border-gray-100 p-8 mb-8">
            <h2 className="text-2xl font-bold text-gray-900 mb-4">Key Features</h2>
            <ul className="space-y-3 text-gray-700">
              <li className="flex items-start gap-3">
                <span className="text-blue-500 font-bold">•</span>
                <span>Automated progress tracking across all courses</span>
              </li>
              <li className="flex items-start gap-3">
                <span className="text-blue-500 font-bold">•</span>
                <span>AI-generated summaries for managers and stakeholders</span>
              </li>
              <li className="flex items-start gap-3">
                <span className="text-blue-500 font-bold">•</span>
                <span>Identify skill gaps and learning opportunities</span>
              </li>
              <li className="flex items-start gap-3">
                <span className="text-blue-500 font-bold">•</span>
                <span>Export insights to PDF or integrate with reporting tools</span>
              </li>
            </ul>
          </div>

          <div className="bg-white rounded-2xl border border-gray-100 p-8">
            <h2 className="text-2xl font-bold text-gray-900 mb-4">How It Works</h2>
            <div className="grid md:grid-cols-3 gap-6">
              <div className="text-center">
                <div className="w-12 h-12 bg-blue-100 rounded-full flex items-center justify-center mx-auto mb-3">
                  <span className="text-blue-600 font-bold">1</span>
                </div>
                <p className="text-sm text-gray-600">Track learning activity</p>
              </div>
              <div className="text-center">
                <div className="w-12 h-12 bg-blue-100 rounded-full flex items-center justify-center mx-auto mb-3">
                  <span className="text-blue-600 font-bold">2</span>
                </div>
                <p className="text-sm text-gray-600">AI analyzes patterns</p>
              </div>
              <div className="text-center">
                <div className="w-12 h-12 bg-blue-100 rounded-full flex items-center justify-center mx-auto mb-3">
                  <span className="text-blue-600 font-bold">3</span>
                </div>
                <p className="text-sm text-gray-600">Generate insights</p>
              </div>
            </div>
          </div>
        </div>
      </div>

      <Footer />
    </main>
  );
}