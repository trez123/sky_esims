import type { MetadataRoute } from "next";

export default function manifest(): MetadataRoute.Manifest {
  return {
    name: "Sky eSims — eSIM for Jamaica & the World",
    short_name: "Sky eSims",
    description:
      "Buy an eSIM for Jamaica and 190+ countries. Instant activation, prepaid and unlimited mobile data plans for travelers.",
    start_url: "/en",
    display: "standalone",
    background_color: "#ffffff",
    theme_color: "#008799",
    lang: "en",
    categories: ["travel", "utilities", "productivity"],
    icons: [
      {
        src: "/favicon-16x16.png",
        sizes: "16x16",
        type: "image/png",
      },
      {
        src: "/apple-touch-icon.png",
        sizes: "180x180",
        type: "image/png",
        purpose: "any",
      },
    ],
  };
}
