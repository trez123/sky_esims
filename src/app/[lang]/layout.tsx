import Footer from '@/shared/components/Footer';
import Navbar from '@/shared/components/NavBar';
import { getTranslations } from '@/shared/l10n/translations';
import React from 'react';

interface Props {
  params: Promise<{ lang: string }>;
  children: React.ReactNode
}

export default async function DashboardLayout({ children, params } : Props) {
          const { lang } = await params;
          const t = getTranslations(lang);
  return (
    <div>
        <Navbar t={t} />
        {children}
        <Footer t={t}/>
    </div>
  );
}
