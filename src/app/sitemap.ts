import type { MetadataRoute } from "next";
import { SITE_LOCALES, SITE_URL } from "./metadata";

const ROUTES: Array<{
  path: string;
  changeFrequency: MetadataRoute.Sitemap[number]["changeFrequency"];
  priority: number;
}> = [
  { path: "", changeFrequency: "weekly", priority: 1.0 },
  { path: "/about", changeFrequency: "monthly", priority: 0.7 },
  { path: "/contact", changeFrequency: "monthly", priority: 0.7 },
  { path: "/privacy", changeFrequency: "yearly", priority: 0.3 },
  { path: "/terms", changeFrequency: "yearly", priority: 0.3 },
  { path: "/refund", changeFrequency: "yearly", priority: 0.3 },
];

export default function sitemap(): MetadataRoute.Sitemap {
  const now = new Date();
  const entries: MetadataRoute.Sitemap = [];

  entries.push({
    url: SITE_URL,
    lastModified: now,
    changeFrequency: "weekly",
    priority: 1.0,
    alternates: {
      languages: Object.fromEntries(
        SITE_LOCALES.map((l) => [l, `${SITE_URL}/${l}`]),
      ),
    },
  });

  for (const route of ROUTES) {
    for (const locale of SITE_LOCALES) {
      const localizedPath = `/${locale}${route.path}`;
      entries.push({
        url: `${SITE_URL}${localizedPath}`,
        lastModified: now,
        changeFrequency: route.changeFrequency,
        priority: route.priority,
        alternates: {
          languages: Object.fromEntries(
            SITE_LOCALES.map((l) => [l, `${SITE_URL}/${l}${route.path}`]),
          ),
        },
      });
    }
  }

  return entries;
}
