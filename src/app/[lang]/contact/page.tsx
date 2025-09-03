import { getTranslations } from "@/shared/l10n/translations";
import React from "react";

interface ContactInfoProps {
  icon: string;
  title: string;
  content: string;
}

const ContactInfo: React.FC<ContactInfoProps> = ({ icon, title, content }) => (
  <div className="flex items-start gap-4">
    <img src={icon} alt="Contact Info Icon" className="w-6 mt-1" />
    <div>
      <h3 className="text-lg font-bold mb-1">{title}</h3>
      <p className="text-gray-600">{content}</p>
    </div>
  </div>
);

interface ContactUsPageProps {
  params: Promise<{ lang: string }>;
}

const ContactUsPage: React.FC<ContactUsPageProps> = async ({ params }: ContactUsPageProps) => {
      const { lang } = await params;
      const t = getTranslations(lang);
  return (
    <div className="bg-white min-h-screen font-poppins mt-[100px]">
      {/* Hero Section */}
      <div className="relative">
        <div className="bg-gradient-to-r from-[#008799] to-[#00E0FF]">
          <div className="container mx-auto px-8 pt-16 pb-48">
            <div className="flex flex-col items-center text-center">
              <h1 className="text-4xl md:text-5xl leading-15 mb-4 text-white font-bold">
                {t.contact_title}
              </h1>
              <p className="text-lg mb-8 font-light max-w-2xl text-white">
                {t.contact_subtitle}
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

      {/* Contact Form Section */}
      <div className="container mx-auto px-8 py-16">
        <div className="max-w-4xl mx-auto">
          <div className="flex justify-center">
            {/* Contact Information */}
            <div className="space-y-8 max-w-2xl">
              <h2 className="text-3xl font-bold mb-4 bg-gradient-to-r from-[#008799] to-[#00E0FF] text-transparent bg-clip-text text-center">
                {t.get_in_touch}
              </h2>
              <div className="w-10 h-1 bg-gradient-to-r from-[#008799] to-[#00E0FF] rounded mb-8 mx-auto" />

              {/* Uncomment and add address/phone contact info if needed */}
              {/*
              <ContactInfo
                icon="assets/assets/icons/home-selected.png"
                title={t.address}
                content={t.addressValue}
              />
              <ContactInfo
                icon="assets/assets/icons/sms-selected.png"
                title={t.phone}
                content={t.phoneValue}
              />
              */}

              <ContactInfo
                icon="/dashboard/assets/assets/icons/my-esims-selected.png"
                title={t.email}
                content={t.email_value}
              />
              <ContactInfo
                icon="/dashboard/assets/assets/icons/settings-selected.png"
                title={t.working_hours}
                content={t.working_hours_value}
              />
            </div>

            {/* Contact Form - add implementation if needed */}

          </div>
        </div>
      </div>

      {/* Map Section - implement if needed */}
      {/* <div className="h-96 bg-gray-100 flex items-center justify-center text-gray-500">
        Map will be displayed here
      </div> */}
    </div>
  );
};

export default ContactUsPage;
