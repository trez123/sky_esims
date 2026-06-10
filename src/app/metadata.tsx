import type { Metadata } from "next";

export const SITE_URL = "https://skyesims.com";
export const SITE_NAME = "Sky eSims";
export const SITE_LOCALES = ["en", "es", "pt"] as const;
export type SiteLocale = (typeof SITE_LOCALES)[number];

const OG_LOCALE: Record<SiteLocale, string> = {
  en: "en_US",
  es: "es_ES",
  pt: "pt_BR",
};

export const DEFAULT_KEYWORDS = [
  "eSIM Jamaica",
  "Jamaica eSIM",
  "buy eSIM Jamaica",
  "Jamaica travel eSIM",
  "eSIM for Jamaica tourists",
  "Kingston eSIM",
  "Montego Bay eSIM",
  "Negril eSIM",
  "Ocho Rios eSIM",
  "Caribbean eSIM",
  "international eSIM",
  "global eSIM",
  "prepaid eSIM Jamaica",
  "unlimited data eSIM",
  "travel data plan Jamaica",
  "best eSIM for Jamaica",
  "no roaming Jamaica",
  "Sky eSims",
  "digital SIM card",
  "mobile data Jamaica",
  "tourist SIM Jamaica",
  "Jamaica internet plan",
  "Caribbean travel data",
  "eSIM compatible phones",
  "iPhone eSIM Jamaica",
  "Samsung eSIM Jamaica",
];

type LocalizedAlternates = Partial<Record<SiteLocale, string>>;

export interface BuildMetadataInput {
  title?: string;
  description?: string;
  path?: string;
  locale?: SiteLocale;
  keywords?: string[];
  ogImage?: string;
  noIndex?: boolean;
  alternates?: LocalizedAlternates;
}

export const DEFAULT_TITLE =
  "Sky eSims — Buy eSIM for Jamaica & 190+ Countries | Instant Activation";
export const DEFAULT_DESCRIPTION =
  "Buy an eSIM for Jamaica and travel the world with instant mobile data. Sky eSims delivers prepaid and unlimited Caribbean and global eSIM plans — no roaming fees, no SIM swaps, activated in minutes from Kingston to anywhere.";

export function buildMetadata(input: BuildMetadataInput = {}): Metadata {
  const {
    title = DEFAULT_TITLE,
    description = DEFAULT_DESCRIPTION,
    path = "/",
    locale = "en",
    keywords = DEFAULT_KEYWORDS,
    ogImage = "/og.png",
    noIndex = false,
    alternates,
  } = input;

  const cleanPath = path.startsWith("/") ? path : `/${path}`;
  const canonical = `${SITE_URL}${cleanPath === "/" ? "" : cleanPath}`;

  const languageAlternates: Record<string, string> = {};
  for (const l of SITE_LOCALES) {
    const altPath = alternates?.[l] ?? cleanPath.replace(/^\/(en|es|pt)/, `/${l}`);
    languageAlternates[l] =
      `${SITE_URL}${altPath === "/" ? `/${l}` : altPath.startsWith(`/${l}`) ? altPath : `/${l}${altPath}`}`;
  }
  languageAlternates["x-default"] = `${SITE_URL}/en`;

  return {
    metadataBase: new URL(SITE_URL),
    title,
    description,
    applicationName: SITE_NAME,
    generator: "Next.js",
    keywords,
    authors: [{ name: "Sky eSims", url: SITE_URL }],
    creator: "Sky eSims",
    publisher: "Sky eSims",
    category: "Telecommunications",
    formatDetection: {
      email: false,
      address: false,
      telephone: false,
    },
    robots: noIndex
      ? { index: false, follow: false }
      : {
          index: true,
          follow: true,
          googleBot: {
            index: true,
            follow: true,
            "max-snippet": -1,
            "max-image-preview": "large",
            "max-video-preview": -1,
          },
        },
    openGraph: {
      type: "website",
      locale: OG_LOCALE[locale],
      alternateLocale: SITE_LOCALES.filter((l) => l !== locale).map(
        (l) => OG_LOCALE[l],
      ),
      url: canonical,
      title,
      description,
      siteName: SITE_NAME,
      images: [
        {
          url: ogImage,
          width: 1200,
          height: 630,
          alt: "Sky eSims — eSIM for Jamaica and the world",
        },
      ],
    },
    twitter: {
      card: "summary_large_image",
      title,
      description,
      images: [ogImage],
      creator: "@skyesims",
      site: "@skyesims",
    },
    icons: {
      icon: [
        { url: "/favicon.ico" },
        { url: "/favicon-16x16.png", sizes: "16x16", type: "image/png" },
      ],
      shortcut: "/favicon-16x16.png",
      apple: "/apple-touch-icon.png",
    },
    manifest: "/manifest.webmanifest",
    alternates: {
      canonical,
      languages: languageAlternates,
    },
    other: {
      "geo.region": "JM",
      "geo.placename": "Kingston, Jamaica",
      "geo.position": "18.0179;-76.8099",
      ICBM: "18.0179, -76.8099",
    },
  };
}

export function generateMetadata(): Metadata {
  return buildMetadata();
}
