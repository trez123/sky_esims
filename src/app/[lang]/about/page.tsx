import { getTranslations } from "@/shared/l10n/translations";
import type { Metadata } from "next";
import { buildMetadata, SITE_LOCALES, SITE_URL, SiteLocale } from "@/app/metadata";
import {
  JsonLdScript,
  breadcrumbSchema,
} from "@/shared/seo/structured-data";

const ABOUT_META: Record<SiteLocale, { title: string; description: string }> = {
  en: {
    title: "About Sky eSims | Jamaica's Trusted Global eSIM Provider",
    description:
      "Sky eSims is a Jamaica-based eSIM company on a mission to give travelers reliable, affordable mobile data in Jamaica, the Caribbean, and 190+ countries worldwide.",
  },
  es: {
    title: "Sobre Sky eSims | Proveedor confiable de eSIM en Jamaica",
    description:
      "Sky eSims es una empresa de eSIM con sede en Jamaica que ofrece a los viajeros datos móviles confiables y económicos en Jamaica, el Caribe y más de 190 países.",
  },
  pt: {
    title: "Sobre a Sky eSims | Provedora de eSIM da Jamaica",
    description:
      "A Sky eSims é uma empresa de eSIM baseada na Jamaica que oferece dados móveis confiáveis e acessíveis na Jamaica, no Caribe e em mais de 190 países.",
  },
};

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
    path: `/${locale}/about`,
    title: ABOUT_META[locale].title,
    description: ABOUT_META[locale].description,
  });
}

interface ValueCardProps {
  icon: string;
  title: string;
  description: string;
}

const ValueCard: React.FC<ValueCardProps> = ({ icon, title, description }) => (
  <div className="bg-white p-8 rounded-2xl shadow-lg">
    <div className="flex flex-col items-center text-center">
      <img src={icon} alt={title} className="w-42 h-42 mb-4" />
      <h3 className="text-xl font-bold mb-4">{title}</h3>
      <p className="text-gray-600">{description}</p>
    </div>
  </div>
);

interface TeamMemberProps {
  image: string;
  name: string;
  role: string;
}

const TeamMember: React.FC<TeamMemberProps> = ({ image, name, role }) => (
  <div className="text-center">
    <img
      src={image}
      alt={name}
      className="w-48 h-48 rounded-full mx-auto mb-4 object-cover"
    />
    <h3 className="text-xl font-bold mb-2">{name}</h3>
    <p className="text-gray-600">{role}</p>
  </div>
);

type AboutPageProps = {
  params: Promise<{ lang: string }>;
};
const AboutPage: React.FC<AboutPageProps> = async ({
  params,
}: AboutPageProps) => {
  const { lang } = await params;
  const locale = (SITE_LOCALES.includes(lang as SiteLocale)
    ? lang
    : "en") as SiteLocale;
  const t = getTranslations(locale);

  const breadcrumbs = breadcrumbSchema([
    { name: "Home", url: `${SITE_URL}/${locale}` },
    { name: "About", url: `${SITE_URL}/${locale}/about` },
  ]);

  return (
    <div className="bg-white min-h-screen font-poppins mt-[100px]">
      <JsonLdScript id="ld-breadcrumb-about" data={breadcrumbs} />
      {/* Hero Section */}
      <div className="relative">
        <div className="bg-gradient-to-r from-[#008799] to-[#00E0FF]">
          <div className="container mx-auto px-8 pt-16 pb-48 2xl:pb-64">
            <div className="flex flex-col items-center text-center">
              <h1 className="text-4xl md:text-5xl leading-15 mb-4 text-white font-bold">
                {t.about_title}
              </h1>
              <p className="text-lg mb-8 font-light max-w-2xl text-white">
                {t.about_subtitle}
              </p>
            </div>
          </div>
        </div>
        <img
          src="/dashboard/assets/assets/images/esim-wave.svg"
          alt="Wave"
          className="w-full absolute bottom-0"
        />
      </div>

      {/* Mission Section */}
      <div className="container mx-auto px-8 py-16">
        <div className="max-w-4xl mx-auto">
          <h2 className="text-3xl font-bold mb-4 bg-gradient-to-r from-[#008799] to-[#00E0FF] text-transparent bg-clip-text text-center">
            {t.our_mission}
          </h2>
          <div className="w-10 h-1 bg-gradient-to-r from-[#008799] to-[#00E0FF] rounded mx-auto mb-8" />
          <p className="text-gray-700 mb-8 leading-12 text-center">
            {t.mission_description}
          </p>
        </div>
      </div>

      {/* Values Section */}
      <div className="bg-gray-50 py-16">
        <div className="container mx-auto px-8">
          <h2 className="text-3xl font-bold mb-12 bg-gradient-to-r from-[#763BB7] to-[#E76BA0] text-transparent bg-clip-text text-center">
            {t.our_values}
          </h2>
          <div className="grid grid-cols-1 md:grid-cols-3 gap-8 max-w-6xl mx-auto">
            <ValueCard
              icon="/dashboard/assets/assets/images/onboarding1.svg"
              title={t.reliable_connectivity}
              description={t.reliable_connectivity_desc}
            />
            <ValueCard
              icon="/dashboard/assets/assets/images/onboarding2.svg"
              title={t.customer_first}
              description={t.customer_first_desc}
            />
            <ValueCard
              icon="/dashboard/assets/assets/images/onboarding3.svg"
              title={t.innovation}
              description={t.innovation_desc}
            />
          </div>
        </div>
      </div>

      {/* Team Section - Uncomment and add localizations and team data if needed */}
      {/*
      <div className="container mx-auto px-8 py-16">
        <h2 className="text-3xl font-bold mb-12 bg-gradient-to-r from-[#008799] to-[#00E0FF] text-transparent bg-clip-text text-center">
          {t.ourTeam}
        </h2>
        <div className="grid grid-cols-1 md:grid-cols-3 gap-8 max-w-6xl mx-auto">
          <TeamMember
            image="https://ik.imagekit.io/qb5fs9jxh/Portfolio/image%202.png?updatedAt=1744935082055"
            name="Silas Coley"
            role={t.ceoAndCto}
          />
          <TeamMember
            image="https://ik.imagekit.io/qb5fs9jxh/Portfolio/people-svgrepo-com-2.svg?updatedAt=1748488141491"
            name="Adrian Crawford"
            role={t.seniorSoftwareEngineer}
          />
          <TeamMember
            image="https://ik.imagekit.io/qb5fs9jxh/Portfolio/people-svgrepo-com-2.svg?updatedAt=1748488141491"
            name="Moyandra Robinson"
            role={t.supportManager}
          />
        </div>
      </div>
      */}
    </div>
  );
};

export default AboutPage;
