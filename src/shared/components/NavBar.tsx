'use client'

import { useState, useEffect } from 'react';
import Link from 'next/link';
import Image from 'next/image';
import RouteGradients from '../utils/route-gradients';
import LanguageSelector from './LanguageSelector';
import { usePathname } from 'next/navigation';

interface NavbarProps {
  t: Record<string, string>; // your translations
}
const navLinks = [
  { href: '/', labelKey: 'home' },
  { href: '/about', labelKey: 'aboutUs' },
  { href: '/contact-us', labelKey: 'contactUs' },
  { href: '/esim_store', labelKey: 'esimStore' },
  { href: '/my_esims', labelKey: 'myEsims' },
  { href: '/profile', labelKey: 'profile' },
];

function Navbar({ t }: NavbarProps) {
    const pathname = usePathname(); // gets current route path
  const currentRoute = pathname ?? '/';
  const [menuOpen, setMenuOpen] = useState(false);

  // Close mobile menu on route change
  useEffect(() => {
    setMenuOpen(false);
  }, [currentRoute]);

  const buildNavLink = (href: string, linkText: string) => {
    const isActive = currentRoute === href;

    const baseClasses =
      'cursor-pointer transition-all duration-300 text-[15px] w-[165px] text-center';
    const activeClasses = isActive
      ? `bg-gradient-to-r ${RouteGradients.getGradientForRoute(currentRoute)} text-transparent bg-clip-text`
      : 'text-gray-700';

    return (
      <Link key={href} href={href} passHref className={`${baseClasses} ${activeClasses}`}>
        {linkText}
      </Link>
    );
  };

  const buildMobileNavLink = (href: string, linkText: string) => {
    const isActive = currentRoute === href;

    const baseClasses = 'cursor-pointer transition-all duration-300 font-poppins text-xl font-bold';
    const activeClasses = isActive
      ? `bg-gradient-to-r ${RouteGradients.getGradientForRoute(currentRoute)} text-transparent bg-clip-text`
      : 'text-gray-700';

    return (
      <Link key={href} href={href} passHref className={`${baseClasses} ${activeClasses}`}>
        {linkText}
      </Link>
    );
  };

  // Conditional class for fixed navbar on some routes
  const fixedNavbarRoutes = ['/', '/about', '/contact-us'];
  const navbarClasses = [
    'flex items-center justify-between bg-white h-[100px] px-4 md:px-8 shadow-xl/4',
    fixedNavbarRoutes.includes(currentRoute) ? 'fixed top-0 left-0 right-0 z-50' : '',
  ].join(' ');

  return (
    <nav className={navbarClasses}>
      <div className="flex items-center gap-2">
        <Image
          src="/assets/assets/images/Esim-Logo.svg"
          alt="Esim Logo"
          width={90}
          height={90}
          className="w-[80px] md:w-[90px] ml-1 mr-1.5 flex-shrink-0"
          priority
        />
        <LanguageSelector />
      </div>

      {/* Desktop nav */}
      <div className="hidden md:flex items-center justify-between bg-white px-8 py-6 font-poppins font-bold">
        {navLinks.map(({ href, labelKey }) => buildNavLink(href, t[labelKey]))}
      </div>

      {/* Desktop Buy Esims Button */}
      <div className="hidden md:flex items-center gap-4">
        <Link href="/esim_store" passHref>
          <div className="bg-gradient-to-t from-[#763BB7FF] to-[#E76BA0FF] text-white px-4 md:px-6 py-2.5 md:py-3.5 rounded-xl cursor-pointer hover:opacity-90 transition-all duration-300 text-sm md:text-base">
            <p className="text-white font-poppins font-[700] text-[15px] cursor-pointer">
              {t.buyEsims}
            </p>
          </div>
        </Link>
      </div>

      {/* Mobile Menu Toggle */}
      <div className="md:hidden">
        <button
          aria-label="Toggle menu"
          className="relative block w-6 h-6 cursor-pointer"
          onClick={() => setMenuOpen(!menuOpen)}
          type="button"
        >
          <div className="w-6 h-6 flex flex-col justify-between">
            {!menuOpen ? (
              <svg className="w-6 h-6 text-gray-700" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path strokeWidth={2} strokeLinecap="round" strokeLinejoin="round" d="M3 18h18M3 12h18M3 6h18" />
              </svg>
            ) : (
              <svg className="w-6 h-6 text-gray-700" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path
                  strokeWidth={2}
                  strokeLinecap="round"
                  strokeLinejoin="round"
                  d="M6 18L18 6M6 6l12 12"
                />
              </svg>
            )}
          </div>
        </button>

        {/* Mobile Menu */}
        <div
          className={`mobile-menu fixed inset-0 bg-white z-40 h-screen transition-transform duration-300 ease-in-out md:hidden ${
            menuOpen ? 'translate-x-0' : 'translate-x-full'
          }`}
        >
          <div className="flex flex-col items-center pt-[150px] h-full gap-8">
            {navLinks.map(({ href, labelKey }) => buildMobileNavLink(href, t[labelKey]))}
            <LanguageSelector />
            <Link href="/esim_store" passHref>
              <div className="bg-gradient-to-t from-[#763BB7FF] to-[#E76BA0FF] text-white px-4 md:px-6 py-2.5 md:py-3.5 rounded-xl cursor-pointer hover:opacity-90 transition-all duration-300 text-sm md:text-base">
                <h2 className="text-white font-poppins font-bold cursor-pointer">{t.buyEsims}</h2>
              </div>
            </Link>
          </div>
        </div>
      </div>
    </nav>
  );
}

export default Navbar;
