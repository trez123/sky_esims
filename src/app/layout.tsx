import type { Metadata, Viewport } from "next";
import { Poppins } from "next/font/google";
import { headers } from "next/headers";
import "./globals.css";
import LanguageSync from "../shared/components/LanguageSync";
import {
  generateMetadata as buildRootMetadata,
  SITE_LOCALES,
  SiteLocale,
} from "./metadata";
import {
  JsonLdScript,
  organizationSchema,
  websiteSchema,
} from "@/shared/seo/structured-data";

const poppins = Poppins({
  variable: "--font-poppins",
  subsets: ["latin"],
  weight: ["100", "200", "300", "400", "500", "600", "700", "800", "900"],
  display: "swap",
});

export const metadata: Metadata = buildRootMetadata();

export const viewport: Viewport = {
  themeColor: "#008799",
  width: "device-width",
  initialScale: 1,
  maximumScale: 5,
};

export default async function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  const h = await headers();
  const headerLocale = h.get("x-locale");
  const lang: SiteLocale = SITE_LOCALES.includes(headerLocale as SiteLocale)
    ? (headerLocale as SiteLocale)
    : "en";

  return (
    <html lang={lang}>
      <head>
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link
          rel="preconnect"
          href="https://fonts.gstatic.com"
          crossOrigin="anonymous"
        />
        <link
          rel="preload"
          href="/dashboard/flutter_bootstrap.js"
          as="script"
          type="application/javascript"
        />
        <link
          rel="preload"
          href="/dashboard/main.dart.js"
          as="script"
          type="application/javascript"
        />
        <JsonLdScript id="ld-organization" data={organizationSchema} />
        <JsonLdScript id="ld-website" data={websiteSchema} />
      </head>
      <body className={` ${poppins.variable} antialiased`}>
        <LanguageSync />
        {children}
      </body>
    </html>
  );
}
