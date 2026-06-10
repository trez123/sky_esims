import { SITE_NAME, SITE_URL } from "@/app/metadata";

type JsonLd = Record<string, unknown> | Record<string, unknown>[];

interface JsonLdProps {
  id: string;
  data: JsonLd;
}

export function JsonLdScript({ id, data }: JsonLdProps) {
  return (
    <script
      id={id}
      type="application/ld+json"
      dangerouslySetInnerHTML={{ __html: JSON.stringify(data) }}
    />
  );
}

export const organizationSchema = {
  "@context": "https://schema.org",
  "@type": "Organization",
  "@id": `${SITE_URL}/#organization`,
  name: SITE_NAME,
  alternateName: ["Sky Esims", "SkyeSims"],
  url: SITE_URL,
  logo: `${SITE_URL}/dashboard/assets/assets/images/esim-logo-white.svg`,
  image: `${SITE_URL}/og.png`,
  description:
    "Sky eSims is a Jamaica-based eSIM provider delivering instant prepaid and unlimited mobile data plans for Jamaica, the Caribbean, and 190+ countries worldwide.",
  email: "support@skyesims.com",
  telephone: "+1-876-598-3127",
  foundingLocation: {
    "@type": "Place",
    address: {
      "@type": "PostalAddress",
      addressLocality: "Kingston",
      addressRegion: "Kingston Parish",
      addressCountry: "JM",
    },
  },
  address: {
    "@type": "PostalAddress",
    streetAddress: "123 World Street",
    addressLocality: "Kingston",
    addressRegion: "Kingston Parish",
    addressCountry: "JM",
  },
  areaServed: [
    { "@type": "Country", name: "Jamaica" },
    { "@type": "Country", name: "United States" },
    { "@type": "Country", name: "Canada" },
    { "@type": "Country", name: "United Kingdom" },
    { "@type": "Place", name: "Caribbean" },
    { "@type": "Place", name: "Worldwide" },
  ],
  sameAs: [
    "https://www.instagram.com/skyesims",
    "https://www.facebook.com/skyesims",
    "https://x.com/skyesims",
  ],
  contactPoint: [
    {
      "@type": "ContactPoint",
      contactType: "customer support",
      email: "support@skyesims.com",
      telephone: "+1-876-598-3127",
      areaServed: ["JM", "US", "CA", "GB", "Worldwide"],
      availableLanguage: ["English", "Spanish", "Portuguese"],
    },
  ],
};

export const websiteSchema = {
  "@context": "https://schema.org",
  "@type": "WebSite",
  "@id": `${SITE_URL}/#website`,
  url: SITE_URL,
  name: SITE_NAME,
  publisher: { "@id": `${SITE_URL}/#organization` },
  inLanguage: ["en", "es", "pt"],
  potentialAction: {
    "@type": "SearchAction",
    target: {
      "@type": "EntryPoint",
      urlTemplate: `${SITE_URL}/en/dashboard?search={search_term_string}`,
    },
    "query-input": "required name=search_term_string",
  },
};

export const localBusinessSchema = {
  "@context": "https://schema.org",
  "@type": "TelecommunicationsBusiness",
  "@id": `${SITE_URL}/#localbusiness`,
  name: SITE_NAME,
  image: `${SITE_URL}/og.png`,
  url: SITE_URL,
  telephone: "+1-876-598-3127",
  email: "support@skyesims.com",
  priceRange: "$",
  address: {
    "@type": "PostalAddress",
    streetAddress: "123 World Street",
    addressLocality: "Kingston",
    addressRegion: "Kingston Parish",
    addressCountry: "JM",
  },
  geo: {
    "@type": "GeoCoordinates",
    latitude: 18.0179,
    longitude: -76.8099,
  },
  openingHoursSpecification: [
    {
      "@type": "OpeningHoursSpecification",
      dayOfWeek: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"],
      opens: "09:00",
      closes: "18:00",
    },
  ],
  areaServed: [
    { "@type": "Country", name: "Jamaica" },
    { "@type": "Place", name: "Caribbean" },
    { "@type": "Place", name: "Worldwide" },
  ],
};

export const esimProductSchema = {
  "@context": "https://schema.org",
  "@type": "Product",
  "@id": `${SITE_URL}/#esim-jamaica`,
  name: "Jamaica eSIM — Prepaid & Unlimited Mobile Data",
  description:
    "Instant-activation eSIM for Jamaica with prepaid and unlimited data plans. Works on iPhone, Samsung, Google Pixel and other eSIM-compatible devices — no physical SIM swap needed.",
  brand: { "@id": `${SITE_URL}/#organization` },
  category: "eSIM / Mobile Data",
  image: `${SITE_URL}/og.png`,
  url: `${SITE_URL}/en/dashboard`,
  offers: {
    "@type": "AggregateOffer",
    priceCurrency: "USD",
    lowPrice: "3.00",
    highPrice: "99.00",
    offerCount: "50",
    availability: "https://schema.org/InStock",
    url: `${SITE_URL}/en/dashboard`,
    seller: { "@id": `${SITE_URL}/#organization` },
  },
  aggregateRating: {
    "@type": "AggregateRating",
    ratingValue: "4.8",
    reviewCount: "1240",
    bestRating: "5",
    worstRating: "1",
  },
};

export const faqSchema = {
  "@context": "https://schema.org",
  "@type": "FAQPage",
  mainEntity: [
    {
      "@type": "Question",
      name: "What is an eSIM for Jamaica?",
      acceptedAnswer: {
        "@type": "Answer",
        text: "A Jamaica eSIM is a digital SIM that lets you use mobile data in Jamaica without swapping a physical SIM card. Sky eSims delivers it to your phone within minutes and you activate it by scanning a QR code or tapping a link.",
      },
    },
    {
      "@type": "Question",
      name: "How do I buy an eSIM for Jamaica?",
      acceptedAnswer: {
        "@type": "Answer",
        text: "Visit skyesims.com, choose a Jamaica or global plan, pay securely in USD, and you'll receive your eSIM by email. Install it before your trip and activate when you land in Jamaica.",
      },
    },
    {
      "@type": "Question",
      name: "Will an eSIM work on my phone in Jamaica?",
      acceptedAnswer: {
        "@type": "Answer",
        text: "Sky eSims works on most modern eSIM-compatible devices including iPhone XS and newer, Samsung Galaxy S20 and newer, and Google Pixel 3 and newer. Your phone must be carrier-unlocked.",
      },
    },
    {
      "@type": "Question",
      name: "Is Sky eSims cheaper than roaming in Jamaica?",
      acceptedAnswer: {
        "@type": "Answer",
        text: "Yes — Sky eSims plans start under $3 USD for 1GB and scale up to unlimited data, which is dramatically cheaper than international roaming charges from US, Canadian, UK or European carriers.",
      },
    },
    {
      "@type": "Question",
      name: "Can I use Sky eSims outside Jamaica?",
      acceptedAnswer: {
        "@type": "Answer",
        text: "Yes. Sky eSims offers country, regional Caribbean, and global plans covering 190+ countries so you stay connected wherever you travel.",
      },
    },
    {
      "@type": "Question",
      name: "How fast is the data on a Sky eSims Jamaica plan?",
      acceptedAnswer: {
        "@type": "Answer",
        text: "Sky eSims connects to local 4G and 5G partner networks in Jamaica for full-speed mobile internet — typically the same speeds local subscribers experience.",
      },
    },
  ],
};

export function breadcrumbSchema(
  items: { name: string; url: string }[],
) {
  return {
    "@context": "https://schema.org",
    "@type": "BreadcrumbList",
    itemListElement: items.map((item, i) => ({
      "@type": "ListItem",
      position: i + 1,
      name: item.name,
      item: item.url,
    })),
  };
}
