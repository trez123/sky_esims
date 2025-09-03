'use client';

import { useRouter, usePathname } from 'next/navigation';

export default function LanguageToggle() {
  const router = useRouter();
  const pathname = usePathname();

  // Determine current locale from the path, e.g., /en/page -> 'en'
  const currentLocale = pathname.split('/')[1];
  const alternateLocale = currentLocale === 'en' ? 'es' : 'en';

  // Function to switch language by pushing new locale path
  function toggleLocale() {
    // Replace the first segment with the alternate locale
    const newPathname = pathname.replace(/^\/[^\/]+/, `/${alternateLocale}`);
    router.push(newPathname);
  }

  return (
    <button onClick={toggleLocale} style={{ padding: 8, fontSize: 16 }}>
      Switch to {alternateLocale.toUpperCase()}
    </button>
  );
}
