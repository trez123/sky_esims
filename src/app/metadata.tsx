import type { Metadata } from "next";

export function generateMetadata(): Metadata {
  const siteUrl = "https://skyesims.com";
  const title = "Sky Esims";
  const description =
    "Welcome to Sky eSims - Your Ultimate Solution for Hassle-free Mobile Connectivity Across the World!";

  return {
    title,
    description,
    applicationName: "Sky Esims",
    keywords: [
      "eSIM",
      "mobile connectivity",
      "global roaming",
      "Sky Esims",
      "digital SIM",
    ],
    authors: [{ name: "Sky Esims Team" }],
    openGraph: {
      type: "website",
      locale: "en",
      url: siteUrl,
      title,
      description,
      siteName: "Sky Esims",
      images: [
        {
          url: `${siteUrl}/og.png`,
          width: 1200,
          height: 630,
          alt: "Sky Esims logo",
        },
      ],
    },
    robots: {
      index: true,
      follow: true,
      nocache: true,
    },
    icons: {
      icon: "/favicon.ico",
      shortcut: "/favicon-16x16.png",
      apple: "/apple-touch-icon.png",
    },
    alternates: {
      canonical: siteUrl,
      languages: {
        en: `${siteUrl}/en`,
        es: `${siteUrl}/es`,
        pt: `${siteUrl}/pt`,
      },
    },
  };
}
