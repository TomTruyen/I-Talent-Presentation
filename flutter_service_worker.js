'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "index.html": "dadcad496962223faa212d27588704d4",
"/": "dadcad496962223faa212d27588704d4",
"manifest.json": "b762c334dd541fbf7feefe92b7a4c221",
"flutter.js": "0816e65a103ba8ba51b174eeeeb2cb67",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"version.json": "561b976e3e5c2add4234521d5e96395f",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/NOTICES": "74a5bed8b0d964bf30fe1606ecdcdefe",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/assets/hackathon_scoreboard.png": "d7695d84f2b8a7eafb9fc07e99c837f1",
"assets/assets/activity_two_1.png": "b387db6de5f2a165fb84e7a94eade464",
"assets/assets/x-factor.png": "d1bcd1a5ce49faa685b3ca81e4596514",
"assets/assets/opensource.png": "1fbf1eeb622038a1ea2e62036d33788a",
"assets/assets/robbert_mirandolle.jpg": "0b7111d16128ab31b4080c38e2c4698d",
"assets/assets/activity_three_2.png": "350304253fc058bfa207f47392cf09ee",
"assets/assets/kotlin.png": "73d0bc49708d2044cf022cab1743e698",
"assets/assets/toon_peeters.jpg": "04110fd6bb2a9cdccd7429c12ec40861",
"assets/assets/activity_three_5.png": "6ec991979a7e3319f13250892b32c8c5",
"assets/assets/activity_one_1.png": "224dd61362a9b952822fecc799d5b6f3",
"assets/assets/pieter_portauw.jpg": "8fd627624d9e8af873b50ae1ec966816",
"assets/assets/hackathon_challenge_2.png": "c74d362a32892caf3f67bfbb159c0c0d",
"assets/assets/python.png": "3d7369eb62cb57e68b4f6654a47ba966",
"assets/assets/nas.png": "0d1cfd10f543184b0dd8265a7a11d3e2",
"assets/assets/duits.png": "1177f2ecdfce330f6dd86e9b0da9245d",
"assets/assets/activity_two_2.png": "28fb4e55bc78cf6ff64b540493a791c2",
"assets/assets/martijn_degreve.png": "5caca9cdbb45bef7001ffee0bb377658",
"assets/assets/bram_allard.jpg": "b788a2a71003ad7a3be4318e1c566565",
"assets/assets/dries_van_bael.jpg": "2586a87bcf2015e18b801d32c1f7226a",
"assets/assets/leetcode.png": "f5ad9d873f9f9fe7921691d3aa0370c6",
"assets/assets/activity_three_4.png": "719a41dcf07a21b2555ce65fa3915127",
"assets/assets/flutter.png": "fa3cc7f5ab38bfea15a763393586084e",
"assets/assets/activity_one_2.png": "d35260c889de624e214415ac8991b75f",
"assets/assets/christophe_cop.jpg": "b72a50f8786736303498d642f4313fe8",
"assets/assets/activity_three_1.png": "6ef9b8ef82b97d21c4d2597dfa983f77",
"assets/assets/activity_three_3.png": "2cf7d7bd53685d411eba8ae95ca6f8cc",
"assets/assets/pxl.png": "c41f9063b46ff3cc652463d3050dbfb3",
"assets/assets/maarten_bloemen.jpg": "c2d0b5de9080e5e1c095bb75d5cd2b4c",
"assets/AssetManifest.json": "2c784e1eacae89cfe3486f75f9c2c0bd",
"canvaskit/profiling/canvaskit.js": "ae2949af4efc61d28a4a80fffa1db900",
"canvaskit/profiling/canvaskit.wasm": "95e736ab31147d1b2c7b25f11d4c32cd",
"canvaskit/canvaskit.js": "c2b4e5f3d7a3d82aed024e7249a78487",
"canvaskit/canvaskit.wasm": "4b83d89d9fecbea8ca46f2f760c5a9ba",
"main.dart.js": "7b1ea896ddc1c7fa2cfd77da20d8f9ce"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
