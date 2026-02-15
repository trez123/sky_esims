import { getTranslations } from "@/shared/l10n/translations";

type TermsPageProps = {
  params: Promise<{ lang: string }>;
};

const TermsPage: React.FC<TermsPageProps> = async ({
  params,
}: TermsPageProps) => {
  const { lang } = await params;
  const t = getTranslations(lang);

  return (
    <div className="bg-white min-h-screen font-poppins mt-[100px]">
      {/* Hero Section */}
      <div className="relative">
        <div className="bg-gradient-to-r from-[#763BB7] to-[#E76BA0]">
          <div className="container mx-auto px-8 pt-16 pb-48 2xl:pb-64">
            <div className="flex flex-col items-center text-center">
              <h1 className="text-4xl md:text-5xl leading-15 mb-4 text-white font-bold">
                {t.terms_title}
              </h1>
              <p className="text-lg mb-8 font-light max-w-2xl text-white">
                {t.terms_subtitle}
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
          <p className="text-gray-600 mb-8">{t.terms_last_updated}</p>

          {/* Agreement */}
          <section className="mb-12">
            <h2 className="text-2xl font-bold mb-4 text-gray-800">
              {t.terms_agreement_title}
            </h2>
            <p className="text-gray-700 leading-relaxed">
              {t.terms_agreement_text}
            </p>
          </section>

          {/* Services */}
          <section className="mb-12">
            <h2 className="text-2xl font-bold mb-4 text-gray-800">
              {t.terms_services_title}
            </h2>
            <p className="text-gray-700 leading-relaxed mb-4">
              {t.terms_services_intro}
            </p>
            <ul className="list-disc pl-6 text-gray-700 space-y-2">
              <li>{t.terms_services_item1}</li>
              <li>{t.terms_services_item2}</li>
              <li>{t.terms_services_item3}</li>
            </ul>
          </section>

          {/* Account Registration */}
          <section className="mb-12">
            <h2 className="text-2xl font-bold mb-4 text-gray-800">
              {t.terms_account_title}
            </h2>
            <p className="text-gray-700 leading-relaxed mb-4">
              {t.terms_account_text}
            </p>
            <ul className="list-disc pl-6 text-gray-700 space-y-2">
              <li>{t.terms_account_item1}</li>
              <li>{t.terms_account_item2}</li>
              <li>{t.terms_account_item3}</li>
            </ul>
          </section>

          {/* eSIM Activation */}
          <section className="mb-12">
            <h2 className="text-2xl font-bold mb-4 text-gray-800">
              {t.terms_activation_title}
            </h2>
            <p className="text-gray-700 leading-relaxed mb-4">
              {t.terms_activation_text}
            </p>
            <ul className="list-disc pl-6 text-gray-700 space-y-2">
              <li>{t.terms_activation_item1}</li>
              <li>{t.terms_activation_item2}</li>
              <li>{t.terms_activation_item3}</li>
            </ul>
          </section>

          {/* Payment */}
          <section className="mb-12">
            <h2 className="text-2xl font-bold mb-4 text-gray-800">
              {t.terms_payment_title}
            </h2>
            <p className="text-gray-700 leading-relaxed mb-4">
              {t.terms_payment_text}
            </p>
            <ul className="list-disc pl-6 text-gray-700 space-y-2">
              <li>{t.terms_payment_item1}</li>
              <li>{t.terms_payment_item2}</li>
              <li>{t.terms_payment_item3}</li>
            </ul>
          </section>

          {/* Acceptable Use */}
          <section className="mb-12">
            <h2 className="text-2xl font-bold mb-4 text-gray-800">
              {t.terms_use_title}
            </h2>
            <p className="text-gray-700 leading-relaxed mb-4">
              {t.terms_use_intro}
            </p>
            <ul className="list-disc pl-6 text-gray-700 space-y-2">
              <li>{t.terms_use_item1}</li>
              <li>{t.terms_use_item2}</li>
              <li>{t.terms_use_item3}</li>
              <li>{t.terms_use_item4}</li>
            </ul>
          </section>

          {/* Limitation of Liability */}
          <section className="mb-12">
            <h2 className="text-2xl font-bold mb-4 text-gray-800">
              {t.terms_liability_title}
            </h2>
            <p className="text-gray-700 leading-relaxed">
              {t.terms_liability_text}
            </p>
          </section>

          {/* Changes to Terms */}
          <section className="mb-12">
            <h2 className="text-2xl font-bold mb-4 text-gray-800">
              {t.terms_changes_title}
            </h2>
            <p className="text-gray-700 leading-relaxed">
              {t.terms_changes_text}
            </p>
          </section>

          {/* Governing Law */}
          <section className="mb-12">
            <h2 className="text-2xl font-bold mb-4 text-gray-800">
              {t.terms_law_title}
            </h2>
            <p className="text-gray-700 leading-relaxed">
              {t.terms_law_text}
            </p>
          </section>

          {/* Contact */}
          <section className="mb-12">
            <h2 className="text-2xl font-bold mb-4 text-gray-800">
              {t.terms_contact_title}
            </h2>
            <p className="text-gray-700 leading-relaxed">
              {t.terms_contact_text}
            </p>
            <p className="text-gray-700 mt-4">
              <strong>{t.email}:</strong> {t.email_value}
            </p>
          </section>
        </div>
      </div>
    </div>
  );
};

export default TermsPage;
