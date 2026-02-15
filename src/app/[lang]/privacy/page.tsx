import { getTranslations } from "@/shared/l10n/translations";

type PrivacyPageProps = {
  params: Promise<{ lang: string }>;
};

const PrivacyPage: React.FC<PrivacyPageProps> = async ({
  params,
}: PrivacyPageProps) => {
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
                {t.privacy_policy_title}
              </h1>
              <p className="text-lg mb-8 font-light max-w-2xl text-white">
                {t.privacy_policy_subtitle}
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
          <p className="text-gray-600 mb-8">{t.privacy_last_updated}</p>

          {/* Introduction */}
          <section className="mb-12">
            <h2 className="text-2xl font-bold mb-4 text-gray-800">
              {t.privacy_intro_title}
            </h2>
            <p className="text-gray-700 leading-relaxed">
              {t.privacy_intro_text}
            </p>
          </section>

          {/* Information We Collect */}
          <section className="mb-12">
            <h2 className="text-2xl font-bold mb-4 text-gray-800">
              {t.privacy_collect_title}
            </h2>
            <p className="text-gray-700 leading-relaxed mb-4">
              {t.privacy_collect_intro}
            </p>
            <ul className="list-disc pl-6 text-gray-700 space-y-2">
              <li>{t.privacy_collect_item1}</li>
              <li>{t.privacy_collect_item2}</li>
              <li>{t.privacy_collect_item3}</li>
              <li>{t.privacy_collect_item4}</li>
              <li>{t.privacy_collect_item5}</li>
            </ul>
          </section>

          {/* How We Use Information */}
          <section className="mb-12">
            <h2 className="text-2xl font-bold mb-4 text-gray-800">
              {t.privacy_use_title}
            </h2>
            <p className="text-gray-700 leading-relaxed mb-4">
              {t.privacy_use_intro}
            </p>
            <ul className="list-disc pl-6 text-gray-700 space-y-2">
              <li>{t.privacy_use_item1}</li>
              <li>{t.privacy_use_item2}</li>
              <li>{t.privacy_use_item3}</li>
              <li>{t.privacy_use_item4}</li>
              <li>{t.privacy_use_item5}</li>
            </ul>
          </section>

          {/* Data Sharing */}
          <section className="mb-12">
            <h2 className="text-2xl font-bold mb-4 text-gray-800">
              {t.privacy_sharing_title}
            </h2>
            <p className="text-gray-700 leading-relaxed mb-4">
              {t.privacy_sharing_intro}
            </p>
            <ul className="list-disc pl-6 text-gray-700 space-y-2">
              <li>{t.privacy_sharing_item1}</li>
              <li>{t.privacy_sharing_item2}</li>
              <li>{t.privacy_sharing_item3}</li>
            </ul>
          </section>

          {/* Data Security */}
          <section className="mb-12">
            <h2 className="text-2xl font-bold mb-4 text-gray-800">
              {t.privacy_security_title}
            </h2>
            <p className="text-gray-700 leading-relaxed">
              {t.privacy_security_text}
            </p>
          </section>

          {/* Your Rights */}
          <section className="mb-12">
            <h2 className="text-2xl font-bold mb-4 text-gray-800">
              {t.privacy_rights_title}
            </h2>
            <p className="text-gray-700 leading-relaxed mb-4">
              {t.privacy_rights_intro}
            </p>
            <ul className="list-disc pl-6 text-gray-700 space-y-2">
              <li>{t.privacy_rights_item1}</li>
              <li>{t.privacy_rights_item2}</li>
              <li>{t.privacy_rights_item3}</li>
              <li>{t.privacy_rights_item4}</li>
            </ul>
          </section>

          {/* Cookies */}
          <section className="mb-12">
            <h2 className="text-2xl font-bold mb-4 text-gray-800">
              {t.privacy_cookies_title}
            </h2>
            <p className="text-gray-700 leading-relaxed">
              {t.privacy_cookies_text}
            </p>
          </section>

          {/* Contact */}
          <section className="mb-12">
            <h2 className="text-2xl font-bold mb-4 text-gray-800">
              {t.privacy_contact_title}
            </h2>
            <p className="text-gray-700 leading-relaxed">
              {t.privacy_contact_text}
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

export default PrivacyPage;
