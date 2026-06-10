import { NextResponse } from "next/server";
import type { NextRequest } from "next/server";

const SUPPORTED = ["en", "es", "pt"] as const;
type Supported = (typeof SUPPORTED)[number];
const DEFAULT_LOCALE: Supported = "en";

function detectLocale(pathname: string): Supported {
  const seg = pathname.split("/")[1];
  return (SUPPORTED as readonly string[]).includes(seg)
    ? (seg as Supported)
    : DEFAULT_LOCALE;
}

export function middleware(request: NextRequest) {
  const { pathname } = request.nextUrl;
  const locale = detectLocale(pathname);

  const response = NextResponse.next();
  response.headers.set("Content-Language", locale);
  response.headers.set("x-locale", locale);
  response.headers.set("x-pathname", pathname);
  return response;
}

export const config = {
  matcher: [
    "/((?!api|_next/static|_next/image|dashboard|favicon.ico|robots.txt|sitemap.xml|manifest.webmanifest|.*\\.(?:png|jpg|jpeg|svg|webp|ico|gif|css|js)).*)",
  ],
};
