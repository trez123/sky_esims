"use client";

import { useEffect } from "react";
import { usePathname, useRouter } from "next/navigation";
import { supportedLanguages } from "../l10n/translations";

export default function LanguageSync() {
  const pathname = usePathname();
  const router = useRouter();
  // Define which routes should have language sync behavior.
  // The logic will run for these base paths.
  const syncRoutes = ["/", "/about", "/contact"];

  useEffect(() => {
    const pathSegments = pathname.split("/");
    const locale = pathSegments[1];
    const hasLocale = supportedLanguages.includes(locale);
    const basePath = hasLocale
      ? `/${pathSegments.slice(2).join("/")}`
      : pathname;

    // Only run the logic if the current route is one of the specified syncRoutes
    if (syncRoutes.includes(basePath)) {
      if (!hasLocale) {
        // This logic runs if there's no language code in the URL.
        // It detects browser language and redirects.
        const browserLang = navigator.language.split("-")[0];
        const languageToNavigate = supportedLanguages.includes(browserLang)
          ? browserLang
          : "en";
        const newPath = `/${languageToNavigate}${
          pathname === "/" ? "" : pathname
        }`;
        router.replace(newPath);
        window.localStorage.setItem("language_code", languageToNavigate);
      } else {
        // If a language code is present, just update localStorage.
        window.localStorage.setItem("language_code", locale);
      }
    }
  }, [pathname, router, syncRoutes]);

  return null;
}
