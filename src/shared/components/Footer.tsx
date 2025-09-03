import Image from 'next/image';
import Link from 'next/link';
import { TranslationStrings } from '../l10n/translations';

interface FooterProps {
  t: TranslationStrings; // translations object, e.g. from getTranslations(lang)
}

const FOOTER_SOCIAL_ICONS = [
  { href: '#', iconClass: 'fab fa-google-plus-g', label: 'Google Plus' },
  { href: '#', iconClass: 'fab fa-facebook-f', label: 'Facebook' },
  { href: '#', iconClass: 'fab fa-twitter', label: 'Twitter' },
  { href: '#', iconClass: 'fab fa-instagram', label: 'Instagram' },
];

const Footer = ({ t }: FooterProps) => {
  return (
    <footer className="bg-[#181818] text-white font-poppins pt-12 pb-4 px-6 md:px-16">
      <div className="flex w-full flex-col md:flex-row justify-between gap-12 md:gap-6">
        {/* Column 1: Logo, description, social icons */}
        <div className="flex-1 flex flex-col gap-6 min-w-[220px]">
          <div>
            <Image
              src="dashboard/assets/assets/images/esim-logo-white.svg"
              alt="Logo"
              width={100}
              height={60}
              className="w-[100px]"
              priority
            />
          </div>
          <p className="text-gray-300 text-sm max-w-xs">{t.footer_description}</p>
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
          <Link href="/" className='hover:text-gray-400 text-sm'>
            {t.home}
          </Link>
          <Link href="/about" className='hover:text-gray-400 text-sm'>
            {t.about_us}
          </Link>
          <Link href="/contact-us" className='hover:text-gray-400 text-sm'>
            {t.contact_us}
          </Link>
          <Link href="/esim_store" className='hover:text-gray-400 text-sm'>
            {t.esim_store}
          </Link>
          <Link href="/my_esims" className='hover:text-gray-400 text-sm'>
            {t.my_esims}
          </Link>
          <Link href="/profile" className='hover:text-gray-400 text-sm'>
            {t.profile}
          </Link>
        </div>

        {/* Column 3: Contact */}
        <div className="flex-1 flex flex-col gap-4 min-w-[180px]">
          <h3 className="text-xl mb-2">{t.contact_us}</h3>
          {/* Uncomment and add actual contact info if desired */}
          {/* <p className="text-sm">(+876) 8329390</p> */}
          {/* <p className="text-sm">silas@byllkreate.com</p> */}
          {/* <p className="text-sm">1000 Old Hope Road, Kingston 10</p> */}
          <a href="#" className="hover:text-gray-400 text-sm mt-2">
            {t.download_our_app}
          </a>
        </div>

        {/* Column 4: Instagram grid */}
        <div className="flex-1 flex flex-col gap-4 min-w-[220px]">
          <h3 className="text-xl mb-2">{t.sky_esim_instagram}</h3>
          <div className="grid grid-cols-4 grid-rows-2 gap-2">
            {[...Array(8)].map((_, i) => (
              <div
                key={i}
                className="bg-gray-300 aspect-square flex hover:bg-gray-200 cursor-pointer transition-all duration-300 items-center justify-center"
              >
                {i === 1 && (
                  <span className="text-2xl text-white select-none">+</span>
                )}
              </div>
            ))}
          </div>
        </div>
      </div>

      {/* Copyright bar */}
      <div className="mt-10 border-t border-gray-700 pt-4 flex flex-col md:flex-row items-center justify-between text-xs text-gray-400">
        <span>{t.copyright}</span>
      </div>
    </footer>
  );
};

export default Footer;
