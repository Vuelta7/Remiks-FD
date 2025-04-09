'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"main.dart.wasm": "9e1989daa079f96a3365b3b97b738646",
"icons/favicon.ico": "dfc063650c6a8312cb35337f4592b6e4",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"index.html": "d9f0f363e189db6eb3cae24b09a4435f",
"/": "d9f0f363e189db6eb3cae24b09a4435f",
"manifest.json": "0a6a997315f1f4ec9874e7fc6d9ae345",
"favicon.ico": "dfc063650c6a8312cb35337f4592b6e4",
"main.dart.js": "15d01032e6089826bf6c462e8597be5c",
"main.dart.mjs": "af73eacf6173115eacc85526920428da",
"version.json": "4bb161aef6206a9177bd080c62c7ccb4",
"vercel.json": "6ed2f7762eefd54f5008aded3c164077",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.js": "34beda9f39eb7d992d46125ca868dc61",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/canvaskit.js": "86e461cf471c1640fd2b461ece4589df",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"flutter_bootstrap.js": "77c60c9efd76c75ee9c2ddb4b40b84bc",
"assets/web/favicon.ico": "dfc063650c6a8312cb35337f4592b6e4",
"assets/FontManifest.json": "32323ad37208e43a42e42c6ae4239db7",
"assets/AssetManifest.bin": "7f83e13efef091b21c844317cdc38b02",
"assets/AssetManifest.json": "4164c1007ac25ad67a87279115c1cdf7",
"assets/AssetManifest.bin.json": "e4d142403d09fc872d9c8d455b9a6acc",
"assets/packages/routing_client_dart/src/assets/es.json": "006019fa2630f52d73040764ad461fab",
"assets/packages/routing_client_dart/src/assets/de.json": "75f261f48361c6ad0f987d669dc279be",
"assets/packages/routing_client_dart/src/assets/ar.json": "45e29bd513d54467b03fe5c10c85cc14",
"assets/packages/routing_client_dart/src/assets/en.json": "006f10a887beeb7207fc58db61426a4e",
"assets/packages/flutter_osm_web/src/asset/osm_interop.js": "8ac7e3bf937ae11469e21265b15709eb",
"assets/packages/flutter_osm_web/src/asset/map.js": "9ca74acd5f94ced7366fa719168d7b51",
"assets/packages/flutter_osm_web/src/asset/map.html": "1d48021f2a0455466f86649b4e828a69",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/flutter_map/lib/assets/flutter_map_logo.png": "208d63cc917af9713fc9572bd5c09362",
"assets/packages/flutter_osm_plugin/assets/default_pin.png": "7679c39b09843c8bbea9add45fb6dd87",
"assets/packages/flutter_osm_plugin/assets/dynamic-styles.yaml": "0ee8b2f249be023fb6cb4e55d5961959",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/fonts/MaterialIcons-Regular.otf": "18cd22efafc97f7735bc9cb5019c5c36",
"assets/NOTICES": "56841a00485c81c73f6f7d0738d55cb1",
"assets/assets/sagada_view.webp": "25fc63872fa26aa9ad29791710f4dfd0",
"assets/assets/facebook.webp": "4f88d209e15f80c2012a47e0f5836402",
"assets/assets/sagada.webp": "45eed1af7fcc872caa1a151d1a708bf9",
"assets/assets/Hey%2520Comic.ttf": "e9b073011bb8c833864edb16b78b41a5",
"assets/assets/remiks_logo.png": "2fe359a9641775ba23c106e7522240f2",
"assets/assets/fb_mobile.webp": "993c17a2f5dc127fc031de3a5ec13f8f",
"assets/assets/sawsaw_suka.png": "b0f2598c807eafba2828921949645ea7",
"assets/assets/Softizen.ttf": "8acda837ac1c2c18b8fdb75d62554616",
"assets/assets/chili_shots.png": "bf98fffd7909d61f366c32e304448481",
"assets/assets/ginisang_alamang.webp": "84c45a7f7c7191acc1b823909c0db7e0",
"assets/assets/remiks_vision.webp": "7c8eb1ecb4c00b791d9e5a52289d7f46",
"assets/assets/barako_view.webp": "32914b6b45ebe0a138dd8393252fec5c",
"assets/assets/remiks_benefit.webp": "8746d42f0bf188618f0b0ffe7dbea248",
"assets/assets/banner.png": "72ca99e48889cf8978a19510c12128da",
"assets/assets/coffee_pattern.webp": "d42d2e074c37053296775cadd1a22222",
"assets/assets/barako_trans.webp": "7739d1765bd4cc1a5bc8d2aa4f3968c2",
"assets/assets/chili_garlic.webp": "d4e227c63c8333106a7e431afd38320b",
"assets/assets/background_intro_raw.webp": "c98ad0e24718620604da484bce4a5a28",
"assets/assets/tiktok_shop.webp": "25268eeaf15606f190a5b9650a9da751",
"assets/assets/sagada_trans.webp": "c7dd7ce9cc3a12e2efb081a8b9b7b365",
"assets/assets/chicharap.webp": "90086b342fc4f95c302e41a080c1aad3",
"assets/assets/chicken_oil.webp": "00f44082c1087bb23bb0925126094ebe",
"assets/assets/Roboto-Black.ttf": "1a00134f7baf6a4783dc1135145a361b",
"assets/assets/lazada_shop.webp": "cb0b80cee4540dc38167febac8c4c8f0",
"assets/assets/turon.webp": "5a71756b0c3b054c1ec2b5f7c5d6c959",
"assets/assets/chicken_pastil.webp": "dd748db4047d6afdfed308afb4e3538e",
"assets/assets/remiks_brew.webp": "f7c1ef5dd8547041331160eb7a3ecfb3",
"assets/assets/hot_sauce.png": "990f039459d482abe28e70bd01acd005",
"assets/assets/Bitshow.ttf": "70e8e44ac703e91c2d0ab6323c73c71f",
"assets/assets/barako.webp": "78b697e0ec4edbe10577732d27de9f46"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"main.dart.wasm",
"main.dart.mjs",
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
