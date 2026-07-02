import "./globals.css";
import { Plus_Jakarta_Sans } from "next/font/google";

const jakarta = Plus_Jakarta_Sans({
  subsets: ["latin"],
  variable: "--font-jakarta",
  weight: ["400", "500", "600", "700", "800"],
  display: "swap",
});

export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <html lang="en">
      {/* 
        By hard-mapping your local font families right here on the wrapper class list, 
        your custom component styles (like fontFamily: "Hornbill") can instantly read the variables!
      */}
      <body className={`${jakarta.variable} antialiased`}>
        {children}
      </body>
    </html>
  );
}