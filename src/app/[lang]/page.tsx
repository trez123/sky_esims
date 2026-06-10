import {
  getTranslations,
  TranslationStrings,
} from "@/shared/l10n/translations";
import { JSX } from "react";
import type { Metadata } from "next";
import {
  buildMetadata,
  SITE_LOCALES,
  SITE_URL,
  SiteLocale,
} from "@/app/metadata";
import {
  JsonLdScript,
  esimProductSchema,
  faqSchema,
  breadcrumbSchema,
} from "@/shared/seo/structured-data";

type Props = {
  params: Promise<{ lang: string }>;
};

const HOME_META: Record<SiteLocale, { title: string; description: string }> = {
  en: {
    title:
      "Sky eSims — Buy eSIM for Jamaica & 190+ Countries | Instant Activation",
    description:
      "The #1 eSIM for Jamaica. Sky eSims lets you buy a prepaid or unlimited Jamaica eSIM in minutes — no roaming, no SIM swap. Plus global plans for 190+ countries.",
  },
  es: {
    title:
      "Sky eSims — Compra eSIM para Jamaica y 190+ países | Activación instantánea",
    description:
      "La mejor eSIM para Jamaica. Compra una eSIM prepagada o ilimitada para Jamaica en minutos con Sky eSims — sin roaming, sin cambiar tarjeta. Planes globales para 190+ países.",
  },
  pt: {
    title:
      "Sky eSims — Compre eSIM para Jamaica e 190+ países | Ativação instantânea",
    description:
      "O melhor eSIM para a Jamaica. Compre um eSIM pré-pago ou ilimitado para a Jamaica em minutos com a Sky eSims — sem roaming, sem trocar de chip. Planos globais para 190+ países.",
  },
};

export async function generateMetadata({ params }: Props): Promise<Metadata> {
  const { lang } = await params;
  const locale = (
    SITE_LOCALES.includes(lang as SiteLocale) ? lang : "en"
  ) as SiteLocale;
  return buildMetadata({
    locale,
    path: `/${locale}`,
    title: HOME_META[locale].title,
    description: HOME_META[locale].description,
  });
}
const buildHeroSection = (t: TranslationStrings) => {
  return (
    <div className="relative font-poppins mt-[100px]">
      <div className="bg-gradient-to-r from-[#008799] to-[#00E0FF]">
        <div className="container mx-auto px-8 pt-24 pb-48">
          <div className="flex flex-col md:flex-row items-start gap-8">
            <div className="flex-1 text-white">
              <h1 className="text-4xl md:text-5xl leading-15 mb-4">
                {t.hero_title}
                <span className="font-bold">{t.hero_title_bold}</span>
              </h1>
              <p className="text-lg mb-8 font-light max-w-xl mt-8">
                {t.hero_subtitle}
              </p>
              <a
                href="/dashboard"
                className="inline-block bg-white text-[#008799] px-8 py-4 rounded-full font-bold hover:bg-opacity-90 transition-all"
              >
                {t.get_started}
              </a>
            </div>
            <div className="flex-1">
              <img
                src="/dashboard/assets/assets/images/business-on-phone.svg"
                alt="Business on Phone"
                className="w-full"
              />
            </div>
          </div>
        </div>
      </div>
      <div className="w-full overflow-hidden absolute bottom-0">
        <img
          src="/dashboard/assets/assets/images/esim-wave.svg"
          alt="Wave"
          className="w-full scale-x-[1.01]"
        />
      </div>
    </div>
  );
};

const buildWelcomeSection = (t: TranslationStrings): JSX.Element => {
  return (
    <div className="container mx-auto px-8 py-16 font-poppins">
      <div className="flex flex-col md:flex-row gap-8 items-start">
        <div className="flex-1">
          <img
            src="/dashboard/assets/assets/images/happy-couple.png"
            alt="Happy Couple"
            className="w-full"
          />
        </div>
        <div className="flex-1">
          <h2 className="text-3xl font-bold mb-4 bg-gradient-to-r from-[#008799] to-[#00E0FF] text-transparent bg-clip-text">
            {t.welcome_title}
          </h2>
          <div className="w-10 h-1 bg-gradient-to-r from-[#008799] to-[#00E0FF] rounded mb-6"></div>
          <p className="text-gray-700 mb-8 leading-12">
            {t.welcome_description}
          </p>
          <a
            href="/dashboard"
            className="inline-block bg-gradient-to-r from-[#008799] to-[#00E0FF] text-white px-6 py-3 rounded-full font-bold hover:opacity-90 transition-all"
          >
            {t.discover}
          </a>
        </div>
      </div>
    </div>
  );
};

const buildPlansSection = (t: TranslationStrings): JSX.Element => {
  return (
    <div className="relative bg-gradient-to-r from-[#763BB7] to-[#E76BA0] py-24 md:py-48 lg:py-96">
      <div className="container mx-auto px-4 md:px-8 font-poppins">
        <div className="bg-white rounded-3xl shadow-2xl p-6 md:p-8">
          {/* Header - Hidden on mobile */}
          <div className="hidden md:grid grid-cols-4 gap-8 mb-8">
            <div className="text-center">
              <h3 className="text-xl font-bold bg-gradient-to-b from-[#763BB7] to-[#E76BA0] text-transparent bg-clip-text">
                {t.plan_type}
              </h3>
            </div>
            <div className="text-center">
              <h3 className="text-xl font-bold bg-gradient-to-b from-[#763BB7] to-[#E76BA0] text-transparent bg-clip-text">
                {t.data_allowance}
              </h3>
            </div>
            <div className="text-center">
              <h3 className="text-xl font-bold bg-gradient-to-b from-[#763BB7] to-[#E76BA0] text-transparent bg-clip-text">
                {t.validity}
              </h3>
            </div>
            <div className="text-center">
              <h3 className="text-xl font-bold bg-gradient-to-b from-[#763BB7] to-[#E76BA0] text-transparent bg-clip-text">
                {t.price}
              </h3>
            </div>
          </div>

          <div className="h-px bg-gray-200 mb-8 hidden md:block"></div>

          {/* Plan Details */}
          <div className="grid grid-cols-1 md:grid-cols-7 gap-8 md:gap-4 mx-4 md:mx-12">
            {/* Plan Types */}
            <div className="space-y-4 md:space-y-8">
              {/* Mobile Title */}
              <h3 className="md:hidden text-lg font-bold bg-gradient-to-b from-[#763BB7] to-[#E76BA0] text-transparent bg-clip-text text-center mb-4">
                {t.plan_type}
              </h3>
              <div className="flex items-center justify-center gap-4">
                <img
                  src="/dashboard/assets/assets/icons/flag.png"
                  alt="Country"
                  className="w-6 h-6"
                />
                <span className="text-gray-700">{t.country}</span>
              </div>
              <div className="flex items-center justify-center gap-4">
                <img
                  src="/dashboard/assets/assets/icons/globe-gradient.png"
                  alt="Global"
                  className="w-6 h-6"
                />
                <span className="text-gray-700">{t.global}</span>
              </div>
              <div className="flex items-center justify-center gap-4">
                <img
                  src="/dashboard/assets/assets/icons/buildings-gradient.png"
                  alt="Regional"
                  className="w-6 h-6"
                />
                <span className="text-gray-700">{t.regional}</span>
              </div>
            </div>

            {/* Divider - Hidden on mobile */}
            <div className="hidden md:flex justify-center">
              <div className="w-4 h-48 bg-gradient-to-b from-[#763BB7] to-[#E76BA0] opacity-50 rounded-full"></div>
            </div>

            {/* Data Allowance */}
            <div className="space-y-4 md:space-y-8 text-center">
              {/* Mobile Title */}
              <h3 className="md:hidden text-lg font-bold bg-gradient-to-b from-[#763BB7] to-[#E76BA0] text-transparent bg-clip-text text-center mb-4">
                {t.data_allowance}
              </h3>
              <div>
                <span className="font-bold">{`${t.up_to} 100 `}</span>
                <span className="font-normal">{t.gb}</span>
              </div>
              <div>
                <span className="font-bold">{`${t.up_to} 50 `}</span>
                <span className="font-normal">{t.gb}</span>
              </div>
              <div>
                <span className="font-bold">{`${t.up_to} 100 `}</span>
                <span className="font-normal">{t.gb}</span>
              </div>
            </div>

            {/* Divider - Hidden on mobile */}
            <div className="hidden md:flex justify-center">
              <div className="w-4 h-48 bg-gradient-to-b from-[#763BB7] to-[#E76BA0] opacity-50 rounded-full"></div>
            </div>

            {/* Validity */}
            <div className="space-y-4 text-center">
              {/* Mobile Title */}
              <h3 className="md:hidden text-lg font-bold bg-gradient-to-b from-[#763BB7] to-[#E76BA0] text-transparent bg-clip-text text-center mb-4">
                {t.validity}
              </h3>
              <div>
                <span className="font-normal">{t.up_to}</span>
                <br />
                <span className="font-bold">{`180 ${t.days} `}</span>
                <span className="font-normal">{t.postpaid}</span>
              </div>
              <div className="flex justify-center">
                <img
                  src="/dashboard/assets/assets/icons/arrow-gradinet.png"
                  alt="Arrow"
                  className="w-1.5 h-4"
                />
              </div>
              <div>
                <span className="font-bold">{`${t.unlimited} `}</span>
                <span className="font-normal">{t.prepaid}</span>
              </div>
            </div>

            {/* Divider - Hidden on mobile */}
            <div className="hidden md:flex justify-center">
              <div className="w-4 h-48 bg-gradient-to-b from-[#763BB7] to-[#E76BA0] opacity-50 rounded-full"></div>
            </div>

            {/* Price */}
            <div className="space-y-4 md:space-y-8 text-center">
              {/* Mobile Title */}
              <h3 className="md:hidden text-lg font-bold bg-gradient-to-b from-[#763BB7] to-[#E76BA0] text-transparent bg-clip-text text-center mb-4">
                {t.price}
              </h3>
              <div>
                <span className="font-bold">1 </span>
                <span className="font-normal">{t.gb}</span>
              </div>
              <div className="flex justify-center">
                <img
                  src="/dashboard/assets/assets/icons/double-transfer.png"
                  alt="Transfer"
                  className="w-3 h-4"
                />
              </div>
              <div>
                <span className="font-bold">{`${t.less_than} 15 `}</span>
                <span className="font-normal">{t.usd}</span>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div className="w-full overflow-hidden absolute top-0">
        <img
          src="/dashboard/assets/assets/images/esim-wave-1.svg"
          alt="Wave 1"
          className="w-full scale-x-[1.01]"
        />
      </div>
      <div className="w-full overflow-hidden absolute bottom-0">
        <img
          src="/dashboard/assets/assets/images/esim-wave-2.svg"
          alt="Wave 2"
          className="w-full scale-x-[1.01]"
        />
      </div>
    </div>
  );
};

const buildExperienceSection = (t: TranslationStrings): JSX.Element => {
  return (
    <div className="container mx-auto px-8 py-16 font-poppins">
      <div className="flex flex-col md:flex-row sm:gap-32 gap-12 items-center">
        <div className="flex-1">
          <h2 className="text-3xl font-bold mb-4 bg-gradient-to-r from-[#763BB7] to-[#E76BA0] text-transparent bg-clip-text">
            {t.experience_title}
          </h2>
          <div className="w-10 h-1 bg-gradient-to-r from-[#763BB7] to-[#E76BA0] rounded mb-6"></div>
          <p className="text-gray-700 mb-8 leading-12">
            {t.experience_description}
          </p>
          <a
            href="/dashboard"
            className="inline-block bg-gradient-to-r from-[#763BB7] to-[#E76BA0] text-white px-8 py-4 rounded-full font-bold hover:opacity-90 transition-all"
          >
            {t.discover}
          </a>
        </div>
        <div className="flex-1">
          <img
            src="/dashboard/assets/assets/images/esim-dj.png"
            alt="Esim DJ"
            className="w-2/3"
          />
        </div>
      </div>
    </div>
  );
};

const buildBuyEsimSection = (t: TranslationStrings): JSX.Element => {
  return (
    <div className="relative h-[900px] md:h-[800px]">
      {/* Background with gradient and bubble */}
      <div className="absolute inset-0 bg-gradient-to-r from-[#763BB7] to-[#E76BA0]">
        <div className="p-8">
          <img
            src="/dashboard/assets/assets/images/bubble1.svg"
            alt="Bubble 1"
            className="w-32"
          />
        </div>
      </div>

      {/* Wave overlay */}
      <div className="w-full overflow-hidden absolute bottom-0">
        <img
          src="/dashboard/assets/assets/images/esim-wave-2.svg"
          alt="Wave 2"
          className="w-full scale-x-[1.01]"
        />
      </div>

      {/* Content */}
      <div className="relative z-10 container mx-auto px-8 py-16">
        <div className="max-w-4xl mx-auto bg-white rounded-3xl shadow-2xl p-12">
          <h2 className="text-3xl font-bold text-center mb-4 bg-gradient-to-r from-[#763BB7] to-[#E76BA0] text-transparent bg-clip-text">
            {t.buy_esim_title}
          </h2>
          <div className="w-10 h-1 bg-gradient-to-r from-[#763BB7] to-[#E76BA0] rounded mx-auto mb-8"></div>

          {/* Cards */}
          <div className="grid grid-cols-1 md:grid-cols-2 gap-8">
            {/* Buy Esim Card */}
            <div className="relative">
              <div className="bg-gradient-to-r from-[#763BB7] to-[#E76BA0] p-[1px] rounded-2xl">
                <div className="bg-white rounded-2xl p-8">
                  <div className="flex flex-col items-center">
                    <img
                      src="/dashboard/assets/assets/icons/esim-chip.svg"
                      alt="Esim Chip"
                      className="w-24 h-24 mb-4"
                    />
                    <h3 className="text-xl font-bold text-gray-900">
                      {t.buy_esim}
                    </h3>
                  </div>
                </div>
              </div>
            </div>

            {/* Activate Abroad Card */}
            <div className="relative">
              <div className="bg-gradient-to-r from-[#763BB7] to-[#E76BA0] p-[1px] rounded-2xl">
                <div className="bg-white rounded-2xl p-8">
                  <div className="flex flex-col items-center">
                    <img
                      src="/dashboard/assets/assets/icons/esim-globe.svg"
                      alt="Esim Globe"
                      className="w-24 h-24 mb-4"
                    />
                    <h3 className="text-xl font-bold text-gray-900">
                      {t.activate_abroad}
                    </h3>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

const buildDownloadAppSection = (t: TranslationStrings): JSX.Element => {
  return (
    <div className="relative bg-gradient-to-r from-[#008799] to-[#00E0FF] py-32 md:py-64 lg:py-96 md:mt-12 mt-42">
      <div className="absolute -top-38 md:-top-16 lg:-top-24 z-10 w-full">
        <div className="flex flex-col items-center justify-center px-4">
          <h2 className="text-2xl md:text-3xl font-bold mb-4 bg-gradient-to-r from-[#008799] to-[#00E0FF] text-transparent bg-clip-text text-center">
            {t.download_app_title}
          </h2>
          <div className="w-8 md:w-10 h-1 bg-gradient-to-r from-[#008799] to-[#00E0FF] rounded mb-4 md:mb-6" />
        </div>
        <p className="text-gray-700 mb-4 md:mb-6 max-w-md mx-auto text-center leading-7 md:leading-8 text-sm md:text-base px-4">
          {t.download_app_subtitle}
        </p>
        <div className="flex justify-center gap-3 md:gap-4 mb-8 md:mb-16 items-center">
          <img
            src="/dashboard/assets/assets/icons/app-store-logo.png"
            alt="App Store"
            className="h-8 md:h-10"
          />
          <img
            src="/dashboard/assets/assets/icons/google-play-logo.png"
            alt="Google Play"
            className="h-6 md:h-8"
          />
        </div>
      </div>

      <div className="md:absolute w-full">
        <div className="flex flex-col md:flex-row justify-center gap-4 md:gap-4 lg:gap-6 px-4">
          <img
            src="/dashboard/assets/assets/images/iphone2.svg"
            alt="iPhone 2"
            className="w-[80%] sm:w-1/3 md:w-1/4 lg:w-1/5 max-w-84 mx-auto md:mx-0"
          />
          <div className="w-[80%] sm:w-1/3 md:w-1/4 lg:w-1/5 max-w-84 relative overflow-hidden mx-auto md:mx-0">
            <img
              src="/dashboard/assets/assets/images/iphone-blank.svg"
              alt="iPhone Blank"
              className="w-full"
            />
            <div className="absolute top-0 left-0 w-full h-full flex flex-col justify-center px-[5%] sm:px-[7%]">
              <div className="overflow-x-auto no-scrollbar snap-x snap-mandatory scrollbar-hide h-5/6 -mt-8 sm:-mt-10 md:-mt-12">
                <div className="flex w-full h-full">
                  {/* Slide 1 */}
                  <div className="flex-none w-full h-full snap-center">
                    <div className="flex flex-col justify-center items-center w-full h-full">
                      <img
                        src="/dashboard/assets/assets/images/onboarding1.svg"
                        alt="Onboarding 1"
                        className="m-2 sm:m-3 md:m-4 w-4/5 sm:w-3/4"
                      />
                      <h1 className="text-[16px] sm:text-[18px] md:text-[20px] w-4/5 sm:w-2/3 text-center font-bold font-poppins text-[#1A535C]">
                        {t.onboarding1_title}
                      </h1>
                      <p className="text-[10px] sm:text-[11px] md:text-[12px] w-4/5 sm:w-2/3 text-center font-poppins mt-2 sm:mt-3 md:mt-4">
                        {t.onboarding1_description}
                      </p>
                    </div>
                  </div>

                  {/* Slide 2 */}
                  <div className="flex-none w-full h-full snap-center">
                    <div className="flex flex-col justify-center items-center w-full h-full">
                      <img
                        src="/dashboard/assets/assets/images/onboarding2.svg"
                        alt="Onboarding 2"
                        className="m-2 sm:m-3 md:m-4 w-4/5 sm:w-3/4"
                      />
                      <h1 className="text-[16px] sm:text-[18px] md:text-[20px] w-4/5 sm:w-2/3 text-center font-bold font-poppins text-[#1A535C]">
                        {t.onboarding2_title}
                      </h1>
                      <p className="text-[10px] sm:text-[11px] md:text-[12px] w-4/5 sm:w-2/3 text-center font-poppins mt-2 sm:mt-3 md:mt-4">
                        {t.onboarding2_description}
                      </p>
                    </div>
                  </div>

                  {/* Slide 3 */}
                  <div className="flex-none w-full h-full snap-center">
                    <div className="flex flex-col justify-center items-center w-full h-full">
                      <img
                        src="/dashboard/assets/assets/images/onboarding3.svg"
                        alt="Onboarding 3"
                        className="m-2 sm:m-3 md:m-4 w-4/5 sm:w-3/4"
                      />
                      <h1 className="text-[16px] sm:text-[18px] md:text-[20px] w-4/5 sm:w-2/3 text-center font-bold font-poppins text-[#1A535C]">
                        {t.onboarding3_title}
                      </h1>
                      <p className="text-[10px] sm:text-[11px] md:text-[12px] w-4/5 sm:w-2/3 text-center font-poppins mt-2 sm:mt-3 md:mt-4">
                        {t.onboarding3_description}
                      </p>
                    </div>
                  </div>
                </div>
              </div>

              <div className="flex justify-center gap-1">
                <div className="w-[8px] h-[8px] sm:w-[10px] sm:h-[10px] border-2 border-[#1A535C] rounded-full"></div>
                <div className="w-[8px] h-[8px] sm:w-[10px] sm:h-[10px] bg-[#1A535C] rounded-full"></div>
                <div className="w-[8px] h-[8px] sm:w-[10px] sm:h-[10px] bg-[#1A535C] rounded-full"></div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div className="w-full overflow-hidden absolute top-0">
        <img
          src="/dashboard/assets/assets/images/esim-wave-3.svg"
          alt="Wave 3"
          className="w-full scale-x-[1.01]"
        />
      </div>
    </div>
  );
};

const buildNewsletterSection = (t: TranslationStrings): JSX.Element => {
  return (
    <div className="container mx-auto px-4 sm:px-8 py-12 sm:py-16 sm:mt-32 font-poppins">
      <div className="flex flex-col items-center justify-center">
        <h2 className="text-2xl sm:text-3xl font-bold mb-4 bg-gradient-to-r from-[#008799] to-[#00E0FF] text-transparent bg-clip-text text-center">
          {t.newsletter_title}
        </h2>
        <div className="w-10 h-1 bg-gradient-to-r from-[#008799] to-[#00E0FF] rounded mb-6" />
      </div>
      <p className="text-gray-700 mb-6 max-w-md mx-auto text-center leading-8 px-4">
        {t.newsletter_subtitle}
      </p>
      <div className="flex flex-col sm:flex-row gap-4 justify-center mt-8 sm:mt-12 w-full max-w-2xl mx-auto px-4">
        <input
          name="email"
          type="email"
          placeholder={t.email}
          className="w-full sm:w-1/2 border border-[#008799] rounded-lg px-4 py-2 text-gray-700 placeholder:text-gray-500"
        />
        <button
          type="submit"
          className="w-full sm:w-auto bg-gradient-to-r from-[#008799] to-[#00E0FF] text-white px-8 py-3 rounded-lg cursor-pointer hover:opacity-80 transition-all duration-300 font-bold text-sm"
        >
          {t.discover}
        </button>
      </div>
    </div>
  );
};

const buildSeoSection = (locale: SiteLocale): JSX.Element => {
  const copy = {
    en: {
      h2: "Buy an eSIM for Jamaica — instant data the moment you land",
      intro:
        "Sky eSims is a Jamaica-based provider that delivers reliable, prepaid and unlimited mobile data plans for travelers visiting Jamaica and locals heading abroad. Skip overpriced roaming, skip the airport SIM kiosk — buy your Jamaica eSIM online, install it before your flight, and connect to local 4G/5G networks the second your plane touches down in Kingston, Montego Bay, Negril, or Ocho Rios.",
      h3a: "Why travelers choose Sky eSims for Jamaica",
      bullets: [
        "Instant digital delivery — receive your Jamaica eSIM by email in minutes.",
        "Prepaid plans from under $3 JMD and unlimited postpaid options up to 180 days.",
        "Works on iPhone XS and newer, Samsung Galaxy S20+ and Google Pixel 3+.",
        "Local Jamaican 4G/5G partner networks — no throttling, no roaming surcharges.",
        "Global and Caribbean regional plans covering 190+ countries.",
        "24/7 customer support based in Jamaica, in English, Spanish and Portuguese.",
      ],
      h3b: "eSIM Jamaica plans for every kind of trip",
      copy: "Whether you're a cruise passenger docking in Falmouth, a digital nomad working remotely from Treasure Beach, a family booked at an all-inclusive in Negril, or a business traveler in New Kingston — there's a Sky eSims data plan that fits. Choose country-specific Jamaica data, Caribbean regional plans that follow you across the islands, or global eSIMs that keep you connected from Jamaica to anywhere on earth.",
      h3c: "How to install a Sky eSims Jamaica eSIM",
      steps: [
        "Pick a Jamaica or global plan and pay securely in JMD.",
        "Receive your eSIM QR code and activation guide instantly by email.",
        "Scan the QR code on an eSIM-compatible iPhone, Samsung or Pixel.",
        "Land in Jamaica and toggle the eSIM on — you're online in seconds.",
      ],
    },
    es: {
      h2: "Compra una eSIM para Jamaica — datos al instante al aterrizar",
      intro:
        "Sky eSims es un proveedor con sede en Jamaica que ofrece planes de datos móviles confiables, prepagados e ilimitados para viajeros que visitan Jamaica y locales que viajan al exterior. Olvídate del roaming caro y de las filas en el aeropuerto: compra tu eSIM para Jamaica en línea, instálala antes del vuelo y conéctate a redes 4G/5G locales en cuanto aterrices en Kingston, Montego Bay, Negril u Ocho Rios.",
      h3a: "Por qué los viajeros eligen Sky eSims para Jamaica",
      bullets: [
        "Entrega digital instantánea — recibe tu eSIM de Jamaica por correo en minutos.",
        "Planes prepagados desde menos de 3 JMD y opciones ilimitadas hasta 180 días.",
        "Compatible con iPhone XS o más nuevo, Samsung Galaxy S20+ y Google Pixel 3+.",
        "Redes 4G/5G locales jamaiquinas — sin estrangulamiento ni recargos de roaming.",
        "Planes globales y regionales del Caribe en más de 190 países.",
        "Soporte 24/7 desde Jamaica en inglés, español y portugués.",
      ],
      h3b: "Planes eSIM Jamaica para cada tipo de viaje",
      copy: "Ya sea que llegues en crucero a Falmouth, trabajes en remoto desde Treasure Beach, viajes en familia a un resort en Negril o por negocios a New Kingston — hay un plan de Sky eSims para ti. Elige datos específicos para Jamaica, planes regionales del Caribe o eSIMs globales que te mantienen conectado desde Jamaica al mundo.",
      h3c: "Cómo instalar una eSIM de Sky eSims para Jamaica",
      steps: [
        "Elige un plan de Jamaica o global y paga de forma segura en JMD.",
        "Recibe tu código QR y guía de activación al instante por email.",
        "Escanea el código en un iPhone, Samsung o Pixel compatible con eSIM.",
        "Aterriza en Jamaica, activa la eSIM y conéctate en segundos.",
      ],
    },
    pt: {
      h2: "Compre um eSIM para a Jamaica — dados na hora ao desembarcar",
      intro:
        "A Sky eSims é uma provedora baseada na Jamaica que oferece planos de dados móveis confiáveis, pré-pagos e ilimitados para viajantes que visitam a Jamaica e locais que viajam para o exterior. Sem roaming caro, sem fila no quiosque do aeroporto: compre seu eSIM para a Jamaica online, instale antes do voo e conecte-se às redes 4G/5G locais assim que pousar em Kingston, Montego Bay, Negril ou Ocho Rios.",
      h3a: "Por que viajantes escolhem a Sky eSims para a Jamaica",
      bullets: [
        "Entrega digital imediata — receba seu eSIM da Jamaica por e-mail em minutos.",
        "Planos pré-pagos a partir de menos de 3 JMD e opções ilimitadas por até 180 dias.",
        "Compatível com iPhone XS ou mais novo, Samsung Galaxy S20+ e Google Pixel 3+.",
        "Redes 4G/5G locais jamaicanas — sem throttling, sem taxas de roaming.",
        "Planos globais e regionais do Caribe em mais de 190 países.",
        "Suporte 24/7 na Jamaica em inglês, espanhol e português.",
      ],
      h3b: "Planos eSIM Jamaica para todo tipo de viagem",
      copy: "Seja chegando de cruzeiro em Falmouth, trabalhando remoto em Treasure Beach, viajando em família para um resort em Negril ou a negócios em New Kingston — há um plano Sky eSims para você. Escolha dados só para a Jamaica, planos regionais do Caribe ou eSIMs globais que mantêm você conectado da Jamaica ao mundo.",
      h3c: "Como instalar um eSIM da Sky eSims para a Jamaica",
      steps: [
        "Escolha um plano da Jamaica ou global e pague com segurança em JMD.",
        "Receba seu QR code e guia de ativação por e-mail na hora.",
        "Escaneie o QR num iPhone, Samsung ou Pixel compatível com eSIM.",
        "Pouse na Jamaica, ative o eSIM e fique online em segundos.",
      ],
    },
  } as const;

  const c = copy[locale];
  return (
    <section
      aria-labelledby="esim-jamaica-seo"
      className="container mx-auto px-4 sm:px-8 py-12 sm:py-16 md:mt-78 sm:mt-32 font-poppins"
    >
      <div className="max-w-4xl mx-auto">
        <h2
          id="esim-jamaica-seo"
          className="text-3xl font-bold mb-6 bg-gradient-to-r from-[#008799] to-[#00E0FF] text-transparent bg-clip-text"
        >
          {c.h2}
        </h2>
        <div className="w-10 h-1 bg-gradient-to-r from-[#008799] to-[#00E0FF] rounded mb-6" />
        <p className="text-gray-700 mb-10 leading-12">{c.intro}</p>

        <h3 className="text-2xl font-semibold mb-4 text-gray-900">{c.h3a}</h3>
        <ul className="list-disc pl-6 text-gray-700 leading-12 space-y-2 mb-10">
          {c.bullets.map((b) => (
            <li key={b}>{b}</li>
          ))}
        </ul>

        <h3 className="text-2xl font-semibold mb-4 text-gray-900">{c.h3b}</h3>
        <p className="text-gray-700 mb-10 leading-12">{c.copy}</p>

        <h3 className="text-2xl font-semibold mb-4 text-gray-900">{c.h3c}</h3>
        <ol className="list-decimal pl-6 leading-12 text-gray-700 space-y-2">
          {c.steps.map((s) => (
            <li key={s}>{s}</li>
          ))}
        </ol>
      </div>
    </section>
  );
};

const Home = async ({ params }: Props) => {
  const { lang } = await params;
  const locale = (
    SITE_LOCALES.includes(lang as SiteLocale) ? lang : "en"
  ) as SiteLocale;
  const t = getTranslations(locale);

  const breadcrumbs = breadcrumbSchema([
    { name: "Home", url: `${SITE_URL}/${locale}` },
  ]);

  return (
    <>
      <JsonLdScript id="ld-product-home" data={esimProductSchema} />
      <JsonLdScript id="ld-faq-home" data={faqSchema} />
      <JsonLdScript id="ld-breadcrumb-home" data={breadcrumbs} />
      {buildHeroSection(t)}
      {buildWelcomeSection(t)}
      {buildPlansSection(t)}
      {buildExperienceSection(t)}
      {buildBuyEsimSection(t)}
      {buildDownloadAppSection(t)}
      {buildSeoSection(locale)}
      {buildNewsletterSection(t)}
    </>
  );
};
export default Home;
