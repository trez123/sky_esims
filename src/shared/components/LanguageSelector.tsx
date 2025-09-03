'use client';

import { useRouter, usePathname } from 'next/navigation';
import { getTranslations, supportedLanguageNames, supportedLanguages } from '../l10n/translations';
import { useState } from 'react';


export default function LanguageToggle() {
  const router = useRouter();
  const pathname = usePathname();
    const [menuOpen, setMenuOpen] = useState(false);
  const selectLanguage = (locale: string) => {
    router.push(`/${locale}`);
  }


  const buildLanguageOption = (locale: string, name: string, key: string) => {
    const baseClasses =
      'block px-4 py-4 text-sm text-gray-700 font-poppins hover:bg-gray-100';
    return (
      <a key={locale} href={locale} className={`${baseClasses}`} onClick={() => selectLanguage(locale)}>
        {name}
      </a>
    );
  }

  return (
    <div className='relative inline-block text-left'>
      <div className='flex items-center gap-2'>
      <button onClick={() => setMenuOpen(!menuOpen)} className='flex items-center gap-2 text-gray-700 hover:opacity-80 transition-all duration-300 cursor-pointer'>
        <img className='w-[24px] flex-shrink-0' alt='Globe' src="/dashboard/assets/assets/icons/globe.svg"/>
      </button>
      </div>
      <div className={`absolute rounded-md shadow-xl bg-white top-0 ${menuOpen ? '' : 'hidden'}`}>
        <div className='py-1'>
          {supportedLanguages.map((lang) => {
            return buildLanguageOption(lang, supportedLanguageNames[lang], lang);
          })}
        </div>
      </div>
    </div>
  );
}
