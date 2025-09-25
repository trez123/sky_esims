'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "df9dfba60d6a7523016fdd0d8ae5e0a0",
"version.json": "fa65e6f37963aae9896d8259488774bf",
"splash/img/light-2x.png": "01e3f6d4bf7d98498a02d3a7d9cd7bb9",
"splash/img/dark-4x.png": "00d3520bc16a7acbc2fda1f55cc46444",
"splash/img/light-3x.png": "9d69945602bddb1619c4011b06546360",
"splash/img/dark-3x.png": "9d69945602bddb1619c4011b06546360",
"splash/img/light-4x.png": "00d3520bc16a7acbc2fda1f55cc46444",
"splash/img/dark-2x.png": "01e3f6d4bf7d98498a02d3a7d9cd7bb9",
"splash/img/dark-1x.png": "8630536872a33889ea59c10fd46c1922",
"splash/img/light-1x.png": "8630536872a33889ea59c10fd46c1922",
"favicon.ico": "8ca7d919f6cafea1599c0c61215d5ff1",
"index.html": "252ec18d5dfb24873a858c479a85b7aa",
"/": "252ec18d5dfb24873a858c479a85b7aa",
"main.dart.js": "cbffbbcd3196ec0cf3d4862c1f8c80c6",
"flutter.js": "83d881c1dbb6d6bcd6b42e274605b69c",
"icons/Icon-192.png": "abc9b61f1616154e1f8c6d49b1f3884d",
"icons/Icon-maskable-192.png": "abc9b61f1616154e1f8c6d49b1f3884d",
"icons/Icon-maskable-512.png": "0f0c316304381c40cba502c194078d30",
"icons/Icon-512.png": "0f0c316304381c40cba502c194078d30",
"manifest.json": "e4522b35977018c74f81a8564ea47fab",
"assets/AssetManifest.json": "c4f4a7a80ed66521c04c87e6ec231ad9",
"assets/NOTICES": "f28ecae536c5ebcec79c6aaa853c285a",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin.json": "b02c325cf852a95b0d9551e2259b92f1",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "85c3f130e23c63ac0305fc3f28a77a5b",
"assets/fonts/MaterialIcons-Regular.otf": "a2c718de649ac9b3ce2d88967e7acbed",
"assets/assets/images/shrugging.png": "a6b566ad765789ac6c5b7d520dade50d",
"assets/assets/images/global.png": "c38c020e9a88d67863ca5b1cf6be0e54",
"assets/assets/images/esim-bg1.svg": "b39bcd460c4f96b71ff1b07c579c8182",
"assets/assets/images/africa.svg": "940e8c9fe84a42956ab1f6965228d725",
"assets/assets/images/north-america.svg": "d8d862451d75ffdd1889b63bb3b2c7b8",
"assets/assets/images/europe.svg": "1f87f06cbc942b74d2946c335e3c5231",
"assets/assets/images/esim-logo-blue.png": "2cef1aea6a9ada6b601cc3f1850b5d6d",
"assets/assets/images/south-america.svg": "dfce490428b0d87c062806f4267eecc6",
"assets/assets/images/asia.svg": "1ef0b082e12913609612339750aaf725",
"assets/assets/images/banner.png": "cbf461d63f60374df1d2efb486d7c3e6",
"assets/assets/images/qr-code.png": "acad0b33f47d3420eecce40e585ce09c",
"assets/assets/images/asia.png": "ef801a41696c262111e949f2597be9ce",
"assets/assets/images/banner2.png": "76d137cb1126b346ecbc4767497333b6",
"assets/assets/images/south-america.png": "7fbbb0e5e44cea449419c68b8503c8d5",
"assets/assets/images/cam-profile.png": "a5835c04aa6638ef27f1ef7b7630615e",
"assets/assets/images/esim-logo-blue.svg": "16d888edfbab59bf343fb9e1cd46a5ce",
"assets/assets/images/europe.png": "2c27915b40c885ed4983555d7d2d5978",
"assets/assets/images/business-on-phone.svg": "d26b4947b909b404f73b002b54ff55b6",
"assets/assets/images/north-america.png": "a828f753cf8f463e1f93653d80e6b6c3",
"assets/assets/images/thinking_user.svg": "790815acf5d7e565d4c0ebe70de48ea1",
"assets/assets/images/onboarding2.svg": "608aab7208601dfa38d1899e6b9fd800",
"assets/assets/images/person.png": "4c0813d1054c02dc24f9246145448d94",
"assets/assets/images/esim-wave-3.svg": "69438fe1d657ba62fd441bfb9c69da56",
"assets/assets/images/Logo-splash.png": "e9318bbd7568eff9af23d9d9ee164e6b",
"assets/assets/images/africa.png": "f987d2479576f5fe545412295f499811",
"assets/assets/images/esim-wave-2.svg": "8241e806986527e60cd1da07234c944d",
"assets/assets/images/onboarding3.svg": "655493b71d4930e0656909dd3ff15b0f",
"assets/assets/images/onboarding1.svg": "dd2aa4c70ac4e873629ba98b1a624d15",
"assets/assets/images/global.svg": "1fa6b5fdb0a218fd4a247fd187d6e724",
"assets/assets/images/esim-wave-1.svg": "6dfc7ee2f326bf5d559c03eae76358ee",
"assets/assets/images/iphone-blank.svg": "56fe42ddbb0b24ba7bff9cd5cea09550",
"assets/assets/images/iphone2.svg": "3d28b5ae6976dab1ef804d5bcf956c98",
"assets/assets/images/Esim-Logo.png": "36bbc66dfc0d84161b2c2425e55ea1c7",
"assets/assets/images/logo-transparent.png": "42e6358a878884966f6e867f9f2f9f4e",
"assets/assets/images/pacific.png": "a450f25a9dcf69276437e2f1f05724c2",
"assets/assets/images/iphone1.svg": "ec70d933525e81e4f58b7c5b2d075d1a",
"assets/assets/images/logo.png": "5effeddc4683b9ff78c37cb30711ea37",
"assets/assets/images/Logo2.png": "6f74a2e41da5e34b212a911e59862866",
"assets/assets/images/bubble3.svg": "3d4b822de23a3313768b0c4a9dfb0cdc",
"assets/assets/images/bubble2.svg": "ef77bb5cd103cd44bcb8282692c732f3",
"assets/assets/images/happy-couple.png": "8f11f7f8c14326ae9cc37c3caf2f61ab",
"assets/assets/images/middle-easts.png": "78c631d6671c183b39781ac968bbf83d",
"assets/assets/images/bubble1.svg": "638f7dbeeeafa1f1f2bf4d611d376347",
"assets/assets/images/esim-dj.png": "b93b4497bbbd46030789a6d52fc1271f",
"assets/assets/images/us-square.png": "fd2f7d3aa17c09ccb863ad36a2080f4c",
"assets/assets/images/esim-logo-white.svg": "3b66c9af8808b29db9b045283de3d589",
"assets/assets/images/arc.png": "b048f0531032f1015da737c0a5ae451b",
"assets/assets/images/latin-america.png": "7fbbb0e5e44cea449419c68b8503c8d5",
"assets/assets/images/footer.svg": "b14bcf5b20d8184bbd588dc2198c6902",
"assets/assets/images/photo-camera.png": "eea6e8ab654b20f6df64822659cfcb57",
"assets/assets/images/Logo.svg": "68429aac7f3cd6dd47852f3098562a3d",
"assets/assets/images/esim-card-background.svg": "294809a27b198046d2941f52218bb87b",
"assets/assets/images/pacific.svg": "e75ac9e973b4d3231e95dd30b3328528",
"assets/assets/images/Esim-Logo.svg": "c155e73380d958e644a90737051b2808",
"assets/assets/images/esim-wave.svg": "ca4f022f272a4d566b12f1e0da05f63c",
"assets/assets/images/logo-white.svg": "4a25db0f881e3b9863d346489b5d25e5",
"assets/assets/images/middle-east.svg": "6087f36f7389cfc331a7c83435f34649",
"assets/assets/icons/settings-selected.png": "122181dd3096e978bfbec9304902d587",
"assets/assets/icons/esim-globe.svg": "0c86dd1394790f24f98c72024f13a900",
"assets/assets/icons/card-white.png": "1d5d67d7cf449e399f15ffb71bb54d4b",
"assets/assets/icons/sms-selected.png": "0143b92b079de3d8c15805626e2314dc",
"assets/assets/icons/check.png": "b32195db35c16d2af486009a6c774147",
"assets/assets/icons/home-selected.png": "efa55b83d2f212c813cb2a392eb709ed",
"assets/assets/icons/flag.png": "830a28cd7f7fb4bc3424f1d080983048",
"assets/assets/icons/sms.png": "89d2325a59a3b36197bc370b86a804da",
"assets/assets/icons/my-esims.png": "3f1a45656c9722086e01a1297bd8658e",
"assets/assets/icons/buildings-gradient.png": "fc66d4b988ce00de34e1a011a03e5590",
"assets/assets/icons/settings.png": "07498f2076724eadb2e4643368afb167",
"assets/assets/icons/esim-chip.svg": "4a5e4c8a99d163053629ec49cac8670d",
"assets/assets/icons/my-esims-selected.png": "27802c9a52bbe1009bcc91633fe94017",
"assets/assets/icons/x.svg": "7b0ec56aa836ab0abd8d0ca78a6fd79f",
"assets/assets/icons/arrow-gradinet.png": "0b17b731a38f20cba9697c56870db5c4",
"assets/assets/icons/photo-camera-white.png": "eea6e8ab654b20f6df64822659cfcb57",
"assets/assets/icons/visa.png": "dc5b3cb118d5381e0087d3750b342f5e",
"assets/assets/icons/paypal-white.png": "83dd14beb2a0fcc9ea5a2ef1bd3dc4a4",
"assets/assets/icons/home.png": "9bd2a02ce1ad80e6b85494ca57d0944a",
"assets/assets/icons/tick.svg": "de1df33c0e6cf6b86a489c3de555dd62",
"assets/assets/icons/google-play-logo.png": "e2c60240aca617d675e468afda12cfb0",
"assets/assets/icons/globe-gradient.png": "21f225b89a8d8fdf72857efb5e11758f",
"assets/assets/icons/app-store-logo.png": "25ff6c6afbde21a7cf695288d5c58ccb",
"assets/assets/icons/android-white.png": "3e9da8959048e9591cc0e4cc354af199",
"assets/assets/icons/apple-white.png": "7be91cf1bb4bc86267fadd00db246eed",
"assets/assets/icons/double-transfer.png": "0cbb81c39e1d10125c4e141c09d472c0",
"assets/assets/icons/apple.png": "d4ec6a1058826c7f0b6f6bd1789bd8bc",
"assets/assets/icons/share.png": "0dcfafe94ca6db49a9814337e3f1b862",
"assets/assets/icons/credit-card.png": "51715af9a693a252ddc2f14b8ff3c175",
"assets/assets/icons/ios-white.png": "7be91cf1bb4bc86267fadd00db246eed",
"assets/assets/icons/globe.svg": "4604baec49bb35272092f876087f49c3",
"assets/assets/icons/mastercard.png": "086ccc42977c0e8f958479f928773d86",
"assets/assets/icons/google.png": "6bf6b78e56872c27ef95283156adccbf",
"assets/assets/icons/facebook.png": "7291259af35fef7f4cc7da225987342e",
"assets/assets/icons/paypal.png": "edeb509f23862e5e76d0c4fb4aa81f5d",
"assets/assets/icons/copy.png": "04ebcd27aa7fbb6c7356dee9b8c0d49c",
"canvaskit/skwasm.js": "ea559890a088fe28b4ddf70e17e60052",
"canvaskit/skwasm.js.symbols": "e72c79950c8a8483d826a7f0560573a1",
"canvaskit/canvaskit.js.symbols": "bdcd3835edf8586b6d6edfce8749fb77",
"canvaskit/skwasm.wasm": "39dd80367a4e71582d234948adc521c0",
"canvaskit/chromium/canvaskit.js.symbols": "b61b5f4673c9698029fa0a746a9ad581",
"canvaskit/chromium/canvaskit.js": "8191e843020c832c9cf8852a4b909d4c",
"canvaskit/chromium/canvaskit.wasm": "f504de372e31c8031018a9ec0a9ef5f0",
"canvaskit/canvaskit.js": "728b2d477d9b8c14593d4f9b82b484f3",
"canvaskit/canvaskit.wasm": "7a3f4ae7d65fc1de6a6e7ddd3224bc93"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
