'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "697c8553791178a105ee3c012aa1f36b",
"main.dart.js_24.part.js": "57475c0ae41236591319e9337217ea1b",
"main.dart.js_34.part.js": "2c42c7a479bb2b74eb2ba0aaf15065ef",
"main.dart.js_46.part.js": "a4894f3110b49fe9d7da01c8dac84042",
"main.dart.js_56.part.js": "f17c8bea8bbe6833848d2679a5fb025e",
"version.json": "fa65e6f37963aae9896d8259488774bf",
"main.dart.js_7.part.js": "00427f27bd54b99b83d8c6323d41093b",
"main.dart.js_60.part.js": "bc9030740d72cc6c5da1dd30fdd52eb7",
"main.dart.js_12.part.js": "db0e222512982b106b86ac7196b6824c",
"splash/img/light-2x.png": "01e3f6d4bf7d98498a02d3a7d9cd7bb9",
"splash/img/dark-4x.png": "00d3520bc16a7acbc2fda1f55cc46444",
"splash/img/light-3x.png": "9d69945602bddb1619c4011b06546360",
"splash/img/dark-3x.png": "9d69945602bddb1619c4011b06546360",
"splash/img/light-4x.png": "00d3520bc16a7acbc2fda1f55cc46444",
"splash/img/dark-2x.png": "01e3f6d4bf7d98498a02d3a7d9cd7bb9",
"splash/img/dark-1x.png": "8630536872a33889ea59c10fd46c1922",
"splash/img/light-1x.png": "8630536872a33889ea59c10fd46c1922",
"favicon.ico": "04224fb7b595216295c2137247f94cae",
"main.dart.js_61.part.js": "35077c28283464863fd17e7112f38466",
"main.dart.js_6.part.js": "5a969feddcd237bc5558c8b6fc86b718",
"index.html": "6cf86dc0bbcd5833d793bd41969f47cf",
"/": "6cf86dc0bbcd5833d793bd41969f47cf",
"main.dart.js_13.part.js": "0829d3168f37957abbb8389b6ece4c26",
"main.dart.js_35.part.js": "436a56397f88ae65f56837561a6c6f16",
"main.dart.js_57.part.js": "677794f41735709b90ee5521458b6426",
"main.dart.js_47.part.js": "af5e140e0a4cf1ea994f06f653391b8f",
"main.dart.js_11.part.js": "5a05b648b48af21be82103a848b3076f",
"main.dart.js_4.part.js": "c678917189ac9da12c97fe7c52ff5d09",
"main.dart.js": "2062a2d4d4a0deedaed5f758dff9526b",
"main.dart.js_45.part.js": "791dd75f8bd1e90f063bfaa87a8d2c10",
"main.dart.js_55.part.js": "75c0d1ae0618817e59125d1ae225e658",
"main.dart.js_27.part.js": "5849c7a6c6264049e8f4ed7ec818da1c",
"main.dart.js_37.part.js": "114e6e2d756be96bc4eaeeceb3cb7b20",
"main.dart.js_19.part.js": "90be46588bc6f01ada7e15520648baf5",
"flutter.js": "24bc71911b75b5f8135c949e27a2984e",
"main.dart.js_54.part.js": "229472bf09f0374b98e3a8428d95d37e",
"main.dart.js_44.part.js": "7d7681ac4e8820e28760005676687c10",
"main.dart.js_36.part.js": "2f74123f22ed39ea2fe1268fed3e9617",
"main.dart.js_10.part.js": "d704dd5880e8010af8cee1c6257df6c0",
"main.dart.js_5.part.js": "08772d6d82afc75fed91bd098cdd1f78",
"main.dart.js_62.part.js": "d777203ee1611b98d93b5d7228501217",
"main.dart.js_58.part.js": "dbc53b7df0944da1671cff9ff769ccea",
"main.dart.js_48.part.js": "0ad7fc8f4adfad3608f57b9f60f33957",
"main.dart.js_15.part.js": "9895f58b82ae3f08ba571912f3013dcc",
"main.dart.js_41.part.js": "f3d071603b8182ee9a81fbbf1ab59fbc",
"main.dart.js_51.part.js": "4886591e45bae74fff63d0ff31c8bd06",
"main.dart.js_23.part.js": "9e2f3c813055f2b04552f4ad94461411",
"main.dart.js_33.part.js": "f213634f2bc9b8726f7a3f56646f7ca4",
"main.dart.js_9.part.js": "ca793ce0c3d962f76e5738ef4bdbe7f2",
"main.dart.js_50.part.js": "00f193bb2af21aeab330da56459bb859",
"main.dart.js_40.part.js": "5f7160c6e77886b634e4cc242f0fe598",
"main.dart.js_32.part.js": "d89aa7931738a1dc309f602a5240a842",
"main.dart.js_22.part.js": "47b8f829555bf27da72b580542f2e1f3",
"main.dart.js_8.part.js": "49d597942bbeb93ee91f958449bcb539",
"icons/Icon-192.png": "abc9b61f1616154e1f8c6d49b1f3884d",
"icons/Icon-maskable-192.png": "abc9b61f1616154e1f8c6d49b1f3884d",
"icons/Icon-maskable-512.png": "0f0c316304381c40cba502c194078d30",
"icons/Icon-512.png": "0f0c316304381c40cba502c194078d30",
"manifest.json": "e4522b35977018c74f81a8564ea47fab",
"main.dart.js_49.part.js": "b47659278b68ad851a2202998bbfe7b9",
"main.dart.js_59.part.js": "eb2557fc8e9bc2e8fd2e33714e74e455",
"main.dart.js_14.part.js": "87ec729daa818d3abdfe37218e0e08c9",
"main.dart.js_1.part.js": "2d783c7c0967282778d497d477e1cdc1",
"main.dart.js_20.part.js": "c162aee6f8a0c3dd41e50aec61b1dfc5",
"main.dart.js_30.part.js": "3391cfc23d79b0f561875f463b4113c6",
"main.dart.js_42.part.js": "91de6dc97fb4da9903c9021d8430b159",
"main.dart.js_52.part.js": "c74c5726624632b52171bc598e0a6a6b",
"main.dart.js_39.part.js": "4f58dee6f202b11af3dcc1fe6f96d470",
"main.dart.js_3.part.js": "cc0907c27af0355342ca1fbd98db44a7",
"main.dart.js_16.part.js": "51c8598d6940877da76378cc295f7b0b",
"assets/NOTICES": "0e745d4d8838403c3d26bb8e8eef10b3",
"assets/FontManifest.json": "993a57843aff5e067c9098f7d461b337",
"assets/AssetManifest.bin.json": "e0ef04e4b7949a051ede1b58d51be05e",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/shaders/stretch_effect.frag": "40d68efbbf360632f614c731219e95f0",
"assets/AssetManifest.bin": "ce5fade91bf01d8403857f317d96a13a",
"assets/fonts/MaterialIcons-Regular.otf": "0306b3d2665817adeaf311ad9ef9759c",
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
"assets/assets/fonts/roboto/Roboto-Italic-VariableFont_wdth,wght.ttf": "5b03341126c5c0b1d4db52bca7f45599",
"assets/assets/fonts/roboto/Roboto-VariableFont_wdth,wght.ttf": "3aa911d4a1e76c8946952fe744ce7434",
"assets/assets/fonts/poppins/Poppins-Medium.ttf": "bf59c687bc6d3a70204d3944082c5cc0",
"assets/assets/fonts/poppins/Poppins-Regular.ttf": "093ee89be9ede30383f39a899c485a82",
"assets/assets/fonts/poppins/Poppins-Bold.ttf": "08c20a487911694291bd8c5de41315ad",
"assets/assets/fonts/poppins/Poppins-Italic.ttf": "c1034239929f4651cc17d09ed3a28c69",
"main.dart.js_28.part.js": "3cc98d26c2ca6696a813f3ab31d126ec",
"main.dart.js_38.part.js": "50dd5b5a5031b1d8b1deb08492deb7b8",
"main.dart.js_2.part.js": "a785d9d67827a8f1a6bffe42f590af39",
"main.dart.js_17.part.js": "6c93ff6d3d8d1081251bdc19b92dcda7",
"main.dart.js_21.part.js": "ad2574394cee69544daf7160aedee9d6",
"sw.js": "06eb1f2c5c2afdc549be30d34be0a5ba",
"main.dart.js_53.part.js": "ec543d765ea9ca97ea623109407cdea7",
"main.dart.js_43.part.js": "95b1a25b319a5627f28b91f8c902e5e0",
"canvaskit/skwasm.js": "8060d46e9a4901ca9991edd3a26be4f0",
"canvaskit/skwasm_heavy.js": "740d43a6b8240ef9e23eed8c48840da4",
"canvaskit/skwasm.js.symbols": "3a4aadf4e8141f284bd524976b1d6bdc",
"canvaskit/canvaskit.js.symbols": "a3c9f77715b642d0437d9c275caba91e",
"canvaskit/skwasm_heavy.js.symbols": "0755b4fb399918388d71b59ad390b055",
"canvaskit/skwasm.wasm": "7e5f3afdd3b0747a1fd4517cea239898",
"canvaskit/chromium/canvaskit.js.symbols": "e2d09f0e434bc118bf67dae526737d07",
"canvaskit/chromium/canvaskit.js": "a80c765aaa8af8645c9fb1aae53f9abf",
"canvaskit/chromium/canvaskit.wasm": "a726e3f75a84fcdf495a15817c63a35d",
"canvaskit/canvaskit.js": "8331fe38e66b3a898c4f37648aaf7ee2",
"canvaskit/canvaskit.wasm": "9b6a7830bf26959b200594729d73538e",
"canvaskit/skwasm_heavy.wasm": "b0be7910760d205ea4e011458df6ee01"};
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
