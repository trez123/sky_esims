import { getTranslations } from "@/shared/l10n/translations";
import type { Metadata } from "next";
import { buildMetadata, SITE_LOCALES, SiteLocale } from "@/app/metadata";

type RefundPageProps = {
  params: Promise<{ lang: string }>;
};

const REFUND_META: Record<SiteLocale, { title: string; description: string }> =
  {
    en: {
      title: "Refund & Cancellation Policy | Sky eSims",
      description:
        "Sky eSims Refund & Cancellation Policy. Eligibility, request steps and timelines for Jamaica and global eSIM purchases.",
    },
    es: {
      title: "Política de Reembolso y Cancelación | Sky eSims",
      description:
        "Política de Reembolso y Cancelación de Sky eSims. Elegibilidad, pasos para solicitar reembolso y tiempos para compras de eSIM.",
    },
    pt: {
      title: "Política de Reembolso e Cancelamento | Sky eSims",
      description:
        "Política de Reembolso e Cancelamento da Sky eSims. Elegibilidade, passos e prazos para compras de eSIM.",
    },
  };

export async function generateMetadata({
  params,
}: RefundPageProps): Promise<Metadata> {
  const { lang } = await params;
  const locale = (SITE_LOCALES.includes(lang as SiteLocale)
    ? lang
    : "en") as SiteLocale;
  return buildMetadata({
    locale,
    path: `/${locale}/refund`,
    title: REFUND_META[locale].title,
    description: REFUND_META[locale].description,
  });
}

const RefundPage: React.FC<RefundPageProps> = async ({
  params,
}: RefundPageProps) => {
  const { lang } = await params;
  const t = getTranslations(lang);

  return (
    <div className="bg-white min-h-screen font-poppins mt-[100px]">
      {/* Hero Section */}
      <div className="relative">
        <div className="bg-gradient-to-r from-[#008799] to-[#00E0FF]">
          <div className="container mx-auto px-8 pt-16 pb-48 2xl:pb-64">
            <div className="flex flex-col items-center text-center">
              <h1 className="text-4xl md:text-5xl leading-15 mb-4 text-white font-bold">
                {t.refund_title}
              </h1>
              <p className="text-lg mb-8 font-light max-w-2xl text-white">
                {t.refund_subtitle}
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

      {/* Content Section */}
      <div className="container mx-auto px-8 py-16">
        <div className="max-w-4xl mx-auto prose prose-lg">
          <p className="text-gray-600 mb-8">{t.refund_last_updated}</p>

          {/* Overview */}
          <section className="mb-12">
            <h2 className="text-2xl font-bold mb-4 text-gray-800">
              {t.refund_overview_title}
            </h2>
            <p className="text-gray-700 leading-relaxed">
              {t.refund_overview_text}
            </p>
          </section>

          {/* Digital Product Notice */}
          <section className="mb-12 bg-blue-50 p-6 rounded-lg">
            <h2 className="text-2xl font-bold mb-4 text-gray-800">
              {t.refund_digital_title}
            </h2>
            <p className="text-gray-700 leading-relaxed">
              {t.refund_digital_text}
            </p>
          </section>

          {/* Refund Eligibility */}
          <section className="mb-12">
            <h2 className="text-2xl font-bold mb-4 text-gray-800">
              {t.refund_eligibility_title}
            </h2>
            <p className="text-gray-700 leading-relaxed mb-4">
              {t.refund_eligibility_intro}
            </p>
            <ul className="list-disc pl-6 text-gray-700 space-y-2">
              <li>{t.refund_eligibility_item1}</li>
              <li>{t.refund_eligibility_item2}</li>
              <li>{t.refund_eligibility_item3}</li>
              <li>{t.refund_eligibility_item4}</li>
            </ul>
          </section>

          {/* Non-Refundable */}
          <section className="mb-12">
            <h2 className="text-2xl font-bold mb-4 text-gray-800">
              {t.refund_nonrefundable_title}
            </h2>
            <p className="text-gray-700 leading-relaxed mb-4">
              {t.refund_nonrefundable_intro}
            </p>
            <ul className="list-disc pl-6 text-gray-700 space-y-2">
              <li>{t.refund_nonrefundable_item1}</li>
              <li>{t.refund_nonrefundable_item2}</li>
              <li>{t.refund_nonrefundable_item3}</li>
              <li>{t.refund_nonrefundable_item4}</li>
            </ul>
          </section>

          {/* Refund Process */}
          <section className="mb-12">
            <h2 className="text-2xl font-bold mb-4 text-gray-800">
              {t.refund_process_title}
            </h2>
            <p className="text-gray-700 leading-relaxed mb-4">
              {t.refund_process_intro}
            </p>
            <ol className="list-decimal pl-6 text-gray-700 space-y-2">
              <li>{t.refund_process_step1}</li>
              <li>{t.refund_process_step2}</li>
              <li>{t.refund_process_step3}</li>
              <li>{t.refund_process_step4}</li>
            </ol>
          </section>

          {/* Refund Timeline */}
          <section className="mb-12">
            <h2 className="text-2xl font-bold mb-4 text-gray-800">
              {t.refund_timeline_title}
            </h2>
            <p className="text-gray-700 leading-relaxed">
              {t.refund_timeline_text}
            </p>
          </section>

          {/* Cancellation Policy */}
          <section className="mb-12 bg-gray-50 p-6 rounded-lg">
            <h2 className="text-2xl font-bold mb-4 text-gray-800">
              {t.refund_cancellation_title}
            </h2>
            <p className="text-gray-700 leading-relaxed mb-4">
              {t.refund_cancellation_intro}
            </p>
            <ul className="list-disc pl-6 text-gray-700 space-y-2">
              <li>{t.refund_cancellation_item1}</li>
              <li>{t.refund_cancellation_item2}</li>
              <li>{t.refund_cancellation_item3}</li>
            </ul>
          </section>

          {/* Disputes */}
          <section className="mb-12">
            <h2 className="text-2xl font-bold mb-4 text-gray-800">
              {t.refund_disputes_title}
            </h2>
            <p className="text-gray-700 leading-relaxed">
              {t.refund_disputes_text}
            </p>
          </section>

          {/* Contact */}
          <section className="mb-12">
            <h2 className="text-2xl font-bold mb-4 text-gray-800">
              {t.refund_contact_title}
            </h2>
            <p className="text-gray-700 leading-relaxed">
              {t.refund_contact_text}
            </p>
            <div className="mt-4 text-gray-700">
              <p>
                <strong>{t.email}:</strong> {t.email_value}
              </p>
              <p>
                <strong>{t.working_hours}:</strong> {t.working_hours_value}
              </p>
            </div>
          </section>
        </div>
      </div>
    </div>
  );
};

export default RefundPage;
