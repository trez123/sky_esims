'use client';

import { useEffect } from 'react';
import { usePathname, useRouter } from 'next/navigation';
import { supportedLanguages } from '../l10n/translations';

export default function LanguageSync() {
  const pathname = usePathname();
  const router = useRouter();

  useEffect(() => {
  const pathSegments = pathname.split('/');
  const locale = pathSegments[1];
  if (!supportedLanguages.includes(locale)) {
    const browserLang = navigator.language.split('-')[0];
    const languageToNavigate = supportedLanguages.includes(browserLang) ? browserLang : 'en';
    const newPath = `/${languageToNavigate}${pathname}`;
    router.replace(newPath);
    window.localStorage.setItem('language_code', languageToNavigate);
  } else {
    window.localStorage.setItem('language_code', locale);
  }
}, [pathname, router]);


  return null;
}
