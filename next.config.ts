import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  async rewrites() {
    return [
      {
        source: "/dashboard/:path*",
        destination: "/dashboard/index.html",
      },
    ];
  },
};

export default nextConfig;
