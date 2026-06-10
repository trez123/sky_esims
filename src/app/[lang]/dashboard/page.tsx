import type { Metadata } from "next";
import { buildMetadata, SITE_LOCALES, SiteLocale } from "@/app/metadata";

export async function generateMetadata({
  params,
}: {
  params: Promise<{ lang: string }>;
}): Promise<Metadata> {
  const { lang } = await params;
  const locale = (SITE_LOCALES.includes(lang as SiteLocale)
    ? lang
    : "en") as SiteLocale;
  return buildMetadata({
    locale,
    path: `/${locale}/dashboard`,
    title: "Sky eSims Store — Buy Jamaica & Global eSIM Plans",
    description:
      "Browse and buy Jamaica eSIM plans and global eSIMs covering 190+ countries. Instant delivery and activation from Sky eSims.",
    noIndex: true,
  });
}

const Dashboard = () => {
// Server-side logic to detect crawler user-agent
  const userAgent = process.env.USER_AGENT || ''; // Example environment variable, or fetch from request headers in middleware
  // For demo, you may fetch client headers via middleware or API
  const isCrawler = /bot|googlebot|crawler|spider|robot|crawling/i.test(userAgent);

  // Render SEO content if crawler, otherwise redirect or render interactive content
  if (isCrawler) {
    return (
      <div>
        <h1>My Flutter Web Application</h1>
        <p>This is SEO-optimized descriptive content about the app.</p>
      </div>
    );
  }

  // For normal users: render placeholder or handle redirect client-side.
  return (
    <div>
      <script
        dangerouslySetInnerHTML={{
          __html: `
          window.location.href = "/dashboard/index.html";
          `,
        }}
      />
    </div>
  );
};

export default Dashboard;
