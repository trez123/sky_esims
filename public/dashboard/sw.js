const CACHE_NAME = "sky-esim-v1";
const urlsToCache = [
  "./",
  "./index.html",
  "./flutter.js",
  "./flutter_bootstrap.js",
  "./main.dart.js",
  "./canvaskit/",
  "./assets/",
];

self.addEventListener("install", (event) => {
  event.waitUntil(
    caches.open(CACHE_NAME).then((cache) => cache.addAll(urlsToCache)),
  );
});

self.addEventListener("fetch", (event) => {
  event.respondWith(
    caches
      .match(event.request)
      .then((response) => response || fetch(event.request)),
  );
});
