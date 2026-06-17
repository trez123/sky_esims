'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "9ede879b2814430f765e85bedc8010de",
"main.dart.js_24.part.js": "068056e55491e65bdb3a6552a24378fa",
"main.dart.js_34.part.js": "94eb63385c5eeab9fecd694d6e14b8e8",
"main.dart.js_46.part.js": "c93c0b87bed0b557205fe5f50032cb2c",
"main.dart.js_56.part.js": "b953af263185bdac02278be9a348e875",
"version.json": "fa65e6f37963aae9896d8259488774bf",
"main.dart.js_7.part.js": "d679946649e7eb24c02f6839b388d209",
"main.dart.js_60.part.js": "42b424dac7ae1d4fd427985d22927d2b",
"main.dart.js_12.part.js": "2dce4268db642d78fdccbe03bd8febfb",
"splash/img/light-2x.png": "01e3f6d4bf7d98498a02d3a7d9cd7bb9",
"splash/img/dark-4x.png": "00d3520bc16a7acbc2fda1f55cc46444",
"splash/img/light-3x.png": "9d69945602bddb1619c4011b06546360",
"splash/img/dark-3x.png": "9d69945602bddb1619c4011b06546360",
"splash/img/light-4x.png": "00d3520bc16a7acbc2fda1f55cc46444",
"splash/img/dark-2x.png": "01e3f6d4bf7d98498a02d3a7d9cd7bb9",
"splash/img/dark-1x.png": "8630536872a33889ea59c10fd46c1922",
"splash/img/light-1x.png": "8630536872a33889ea59c10fd46c1922",
"favicon.ico": "04224fb7b595216295c2137247f94cae",
"main.dart.js_61.part.js": "3e76539510db1df7a3eec690d2f281d4",
"main.dart.js_6.part.js": "e8cf74de4962348c89819b25bb64bb6e",
"index.html": "6cf86dc0bbcd5833d793bd41969f47cf",
"/": "6cf86dc0bbcd5833d793bd41969f47cf",
"main.dart.js_13.part.js": "ccbe81db420b20cdb6fe757b7436088f",
"main.dart.js_35.part.js": "9c527564afa87b238b0cd778c9cfd401",
"main.dart.js_57.part.js": "d1885f163472a2fdee30cf97994a159a",
"main.dart.js_47.part.js": "cbe339811920bee9671f7eec21fc7caf",
"main.dart.js_11.part.js": "83393870d0896d6e357dc87a44fe3d26",
"main.dart.js_4.part.js": "8f567547925d5fffa41e71b51392e5be",
"main.dart.js": "60726a42428c0a9ad9d2677850f8a440",
"main.dart.js_45.part.js": "9a110c3135e888ad8b2bda87cbc9a84c",
"main.dart.js_55.part.js": "43163593e1e9372a28aba6bdc4a81907",
"main.dart.js_27.part.js": "c82c0c71ec0f348c17ff96be09d1420c",
"main.dart.js_37.part.js": "b022560b6836bd35bc050a050ddcc75e",
"main.dart.js_19.part.js": "5a007969214eb8fd7f05dde3d8d4a1f5",
"flutter.js": "24bc71911b75b5f8135c949e27a2984e",
"main.dart.js_54.part.js": "65d7a9ae3f285b6b878bdf9208057949",
"main.dart.js_44.part.js": "2c88bf8802c3e0b7f67a2ffeab66a7be",
"main.dart.js_36.part.js": "1459dfa96dd64a624d4e56a09c64010f",
"main.dart.js_10.part.js": "03341c16085809820a3ee18e5eac087c",
"main.dart.js_5.part.js": "786bf4eb515e2845d3413862cc452af7",
"main.dart.js_62.part.js": "5532c06ae25b7f0d22cdd4e276da231d",
"main.dart.js_58.part.js": "7774034f38f2c7935d8d95aea982cc69",
"main.dart.js_48.part.js": "25c851d7b7b994140e9d56f5e5123ab6",
"main.dart.js_15.part.js": "ed76c93954de2c8a4519eddeb073e556",
"main.dart.js_41.part.js": "f3d071603b8182ee9a81fbbf1ab59fbc",
"main.dart.js_51.part.js": "4de99d5c0a5f7fc7e6fecd573799ce02",
"main.dart.js_23.part.js": "ad067662894c2f3493e5ec2911476cbc",
"main.dart.js_33.part.js": "18aa394e2d5ca4f3648782a25e6e112d",
"main.dart.js_9.part.js": "f1cd6526ab0b6780d3f715afe85060f0",
"main.dart.js_50.part.js": "00ea8ca0915677e0f4676ccb1efedae7",
"main.dart.js_40.part.js": "b1b4dce6f97759c0922157fb6c35b59a",
"main.dart.js_32.part.js": "2c203d393451f7f8eb20cf9e61b34e6d",
"main.dart.js_22.part.js": "0297cd9bbe104e3cdb454392f54de0fd",
"main.dart.js_8.part.js": "9a2cb3d9f3c7c075bdf2bb0649c131f9",
"icons/Icon-192.png": "abc9b61f1616154e1f8c6d49b1f3884d",
"icons/Icon-maskable-192.png": "abc9b61f1616154e1f8c6d49b1f3884d",
"icons/Icon-maskable-512.png": "0f0c316304381c40cba502c194078d30",
"icons/Icon-512.png": "0f0c316304381c40cba502c194078d30",
"manifest.json": "e4522b35977018c74f81a8564ea47fab",
"main.dart.js_49.part.js": "13c1225ca9aa9a074a06238d2820bedf",
"main.dart.js_59.part.js": "baf7c3204182fe5e99f1b7c85954ef88",
"main.dart.js_14.part.js": "7f5f8c795584f928cded97974acf80ce",
"main.dart.js_1.part.js": "89fce23f79694044c9fd68577bbdff1a",
"main.dart.js_20.part.js": "ed296a390195e699f18643af1bec2f91",
"main.dart.js_30.part.js": "3391cfc23d79b0f561875f463b4113c6",
"main.dart.js_42.part.js": "c24ab0e3e69cf494f152f682d149ee36",
"main.dart.js_52.part.js": "ec543d765ea9ca97ea623109407cdea7",
"main.dart.js_39.part.js": "95315e31ff62919e29c922378777bb89",
"main.dart.js_3.part.js": "26018a1459cc6ad8da7bee6ed65ab037",
"main.dart.js_16.part.js": "3915111c484efa84995826a2e03fc044",
"assets/NOTICES": "4ab510182118209469dd0d14e8adb387",
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
"main.dart.js_28.part.js": "6f4f8bbb32c8bfb56124bd78bca4ff7b",
"main.dart.js_38.part.js": "d8dc102340f14691ad2984dccd4bc902",
"main.dart.js_2.part.js": "7092d6fa6061860a7310ee47420a7e68",
"main.dart.js_17.part.js": "6c93ff6d3d8d1081251bdc19b92dcda7",
"main.dart.js_21.part.js": "72b7864f2a6c7581fb99a84d03657e9a",
"sw.js": "06eb1f2c5c2afdc549be30d34be0a5ba",
"main.dart.js_53.part.js": "440f7d5cad05cd4f18609a64796f7609",
"main.dart.js_43.part.js": "721a72b09a228b7e2457d52e239a3529",
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
