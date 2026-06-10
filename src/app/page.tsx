import { redirect } from "next/navigation";
import { headers } from "next/headers";
import { SITE_LOCALES, SiteLocale } from "./metadata";

export const dynamic = "force-dynamic";

function pickLocaleFromAcceptLanguage(header: string | null): SiteLocale {
  if (!header) return "en";
  const preferred = header
    .split(",")
    .map((part) => part.split(";")[0].trim().toLowerCase().split("-")[0])
    .find((lang) => SITE_LOCALES.includes(lang as SiteLocale));
  return (preferred as SiteLocale) ?? "en";
}

export default async function RootPage() {
  const h = await headers();
  const locale = pickLocaleFromAcceptLanguage(h.get("accept-language"));
  redirect(`/${locale}`);
}
