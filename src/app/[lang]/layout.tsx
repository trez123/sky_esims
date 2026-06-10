import Footer from "@/shared/components/Footer";
import Navbar from "@/shared/components/NavBar";
import { getTranslations } from "@/shared/l10n/translations";
import {
  buildMetadata,
  SITE_LOCALES,
  SiteLocale,
} from "@/app/metadata";
import {
  JsonLdScript,
  localBusinessSchema,
} from "@/shared/seo/structured-data";
import type { Metadata } from "next";
import React from "react";

interface Props {
  params: Promise<{ lang: string }>;
  children: React.ReactNode;
}

export async function generateMetadata({
  params,
}: {
  params: Promise<{ lang: string }>;
}): Promise<Metadata> {
  const { lang } = await params;
  const locale = (SITE_LOCALES.includes(lang as SiteLocale)
    ? lang
    : "en") as SiteLocale;
  return buildMetadata({ locale, path: `/${locale}` });
}

export function generateStaticParams() {
  return SITE_LOCALES.map((lang) => ({ lang }));
}

export default async function LangLayout({ children, params }: Props) {
  const { lang } = await params;
  const t = getTranslations(lang);
  return (
    <div lang={lang}>
      <JsonLdScript id="ld-localbusiness" data={localBusinessSchema} />
      <Navbar t={t} />
      {children}
      <Footer t={t} lang={lang} />
    </div>
  );
}
