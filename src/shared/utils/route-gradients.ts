class RouteGradients {
  private static gradients: Record<string, string> = {
    "/": "from-[#008799] to-[#00E0FF]",
    "/about": "from-[#763BB7] to-[#E76BA0]",
    "/contact": "from-[#008799] to-[#00E0FF]",
    "/app#/esim_store": "from-[#008799] to-[#00E0FF]",
    "/app#/my_esims": "from-[#008799] to-[#00E0FF]",
    "/app#/profile": "from-[#008799] to-[#00E0FF]",
  };

  static getGradientForRoute(route: string): string {
    if (route.startsWith("/app#")) {
      // rebuild key with literal string interpolation
      const key = `/app#${route.substring(5)}`;
      return this.gradients[key] ?? this.gradients["/"];
    }
    return this.gradients[route] ?? this.gradients["/"];
  }
}

export default RouteGradients;
