import Image from "next/image";
import Link from "next/link";
import { TranslationStrings } from "../l10n/translations";

interface FooterProps {
  t: TranslationStrings; // translations object, e.g. from getTranslations(lang)
  lang?: string; // language code for routing
}

const FOOTER_SOCIAL_ICONS = [
  { href: "#", iconClass: "fab fa-google-plus-g", label: "Google Plus" },
  { href: "#", iconClass: "fab fa-facebook-f", label: "Facebook" },
  { href: "#", iconClass: "fab fa-twitter", label: "Twitter" },
  { href: "#", iconClass: "fab fa-instagram", label: "Instagram" },
];

const Footer = ({ t, lang = "en" }: FooterProps) => {
  return (
    <footer className="bg-[#181818] text-white font-poppins pt-12 pb-4 px-6 md:px-16">
      <div className="flex w-full flex-col md:flex-row justify-between gap-12 md:gap-6">
        {/* Column 1: Logo, description, social icons */}
        <div className="flex-1 flex flex-col gap-6 min-w-[220px]">
          <div>
            <Image
              src="/dashboard/assets/assets/images/esim-logo-white.svg"
              alt="Logo"
              width={100}
              height={60}
              className="w-[100px]"
              priority
            />
          </div>
          <p className="text-gray-300 text-sm max-w-xs">
            {t.footer_description}
          </p>
          <div className="flex gap-4 mt-2">
            {FOOTER_SOCIAL_ICONS.map(({ href, iconClass, label }) => (
              <a
                key={label}
                href={href}
                className="hover:text-gray-400"
                aria-label={label}
                target="_blank"
                rel="noopener noreferrer"
              >
                <i className={iconClass} />
              </a>
            ))}
          </div>
        </div>

        {/* Column 2: Links */}
        <div className="flex-1 flex flex-col gap-4 min-w-[180px]">
          <h3 className="text-xl mb-2">{t.sky_esim_links}</h3>
          <Link href={`/${lang}`} className="hover:text-gray-400 text-sm">
            {t.home}
          </Link>
          <Link href={`/${lang}/about`} className="hover:text-gray-400 text-sm">
            {t.about_us}
          </Link>
          <Link
            href={`/${lang}/contact`}
            className="hover:text-gray-400 text-sm"
          >
            {t.contact_us}
          </Link>
          <Link
            href={`/${lang}/dashboard`}
            className="hover:text-gray-400 text-sm"
          >
            {t.esim_store}
          </Link>
        </div>

        {/* Column 3: Contact */}
        <div className="flex-1 flex flex-col gap-4 min-w-[180px]">
          <h3 className="text-xl mb-2">{t.contact_us}</h3>
          <p className="text-sm text-gray-300">{t.phone_value}</p>
          <p className="text-sm text-gray-300">{t.email_value}</p>
          {/* <p className="text-sm text-gray-300">{t.address_value}</p> */}
          <p className="text-sm text-gray-400 mt-2">{t.working_hours_value}</p>
        </div>

        {/* Column 4: Legal */}
        <div className="flex-1 flex flex-col gap-4 min-w-[180px]">
          <h3 className="text-xl mb-2">{t.legal}</h3>
          <Link
            href={`/${lang}/privacy`}
            className="hover:text-gray-400 text-sm"
          >
            {t.privacy_policy}
          </Link>
          <Link href={`/${lang}/terms`} className="hover:text-gray-400 text-sm">
            {t.terms_of_service}
          </Link>
          <Link
            href={`/${lang}/refund`}
            className="hover:text-gray-400 text-sm"
          >
            {t.refund_policy}
          </Link>
        </div>
      </div>

      {/* Copyright bar */}
      <div className="mt-10 border-t border-gray-700 pt-4 flex flex-col md:flex-row items-center justify-between text-xs text-gray-400">
        <span>{t.copyright}</span>
        <div className="flex gap-4 mt-2 md:mt-0">
          <Link href={`/${lang}/privacy`} className="hover:text-gray-300">
            {t.privacy_policy}
          </Link>
          <Link href={`/${lang}/terms`} className="hover:text-gray-300">
            {t.terms_of_service}
          </Link>
          <Link href={`/${lang}/refund`} className="hover:text-gray-300">
            {t.refund_policy}
          </Link>
        </div>
      </div>
    </footer>
  );
};

export default Footer;
