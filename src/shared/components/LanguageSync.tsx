'use client';

import { useEffect } from 'react';
import { usePathname, useRouter } from 'next/navigation';

export default function LanguageSync() {
  const pathname = usePathname();
  const router = useRouter();

  useEffect(() => {
    const supportedLanguages = ['en', 'es', 'pt'];

    if (pathname === '/') {
      const browserLang = navigator.language.split('-')[0];
      const languageToNavigate = supportedLanguages.includes(browserLang) ? browserLang : 'en';

      router.replace(`/${languageToNavigate}`);
      window.localStorage.setItem('language_code', languageToNavigate);
    } else {
      const locale = pathname.split('/')[1];
      const languageToStore = supportedLanguages.includes(locale) ? locale : 'en';
      window.localStorage.setItem('language_code', languageToStore);
    }
  }, [pathname, router]);

  return null;
}
