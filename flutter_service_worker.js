'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "favicon.png": "5dcef449791fa27946b3d35ad8803796",
"version.json": "676e3a45add5d63dd67be98076276628",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "ab33ca63325abb6509413f053d5e97fb",
"main.dart.js": "1a3538d56800fcd9162455d022b02d94",
"assets/angel.svga": "a9265981485f1130c7e7fd2f2be1252a",
"assets/images/a565-239x200-logo.gif": "2ab2340b7e82f79dcf28a13523698ba1",
"assets/images/cat.jpg": "4c04387f9cad627fdd174a2a1b7360d1",
"assets/images/a503-239x200-logo.gif": "77237d48bf71180d608a22177a8b2c3b",
"assets/images/a298-logo.gif": "3de8c4dfcc7b7ae13304247b0b064d9e",
"assets/images/animated-webp-supported.webp": "f9961d54b2290c36ad3e54995d9d2dcf",
"assets/images/a578-239x200-logo.gif": "377e34e922a9d3114f420b73f2ab3dde",
"assets/images/zonble.jpg": "e26b5a56441e61eee10597267ff430c5",
"assets/images/a317-239x200-logo.gif": "6868165eb85095a339cfce12ed3f7676",
"assets/images/a361-239x200-logo.gif": "916335b4a8791e46c33a4865bb2b418a",
"assets/NOTICES": "0a1f4ed53f05d07fc4073a6aa62d6072",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/rose.svga": "147016ec686e7cbf2196917697b89fbd",
"assets/AssetManifest.json": "54fedf9e1c2ab215d1c59003eb377ae5",
"assets/kingset.svga": "986d9d2936ebdd628aea140ce50a0bd5",
"assets/halloween.svga": "691a7f03c0e1949adb6c19e30d1c94d2",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/assets/angel.svga": "a9265981485f1130c7e7fd2f2be1252a",
"assets/assets/off_road_car.riv": "ed576aa0dda582ecf3a7a311b80415c6",
"assets/assets/rose.svga": "147016ec686e7cbf2196917697b89fbd",
"assets/assets/kingset.svga": "986d9d2936ebdd628aea140ce50a0bd5",
"assets/assets/halloween.svga": "691a7f03c0e1949adb6c19e30d1c94d2",
"assets/assets/posche.svga": "c147194ec20e4c410debf8c03f1f3a9c",
"assets/assets/rocket.riv": "57ff619ec37fbd18141544c1b55bc6a5",
"assets/posche.svga": "c147194ec20e4c410debf8c03f1f3a9c",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"index.html": "ab4a03fd510c56ed5ce428e3cecef023",
"/": "ab4a03fd510c56ed5ce428e3cecef023"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
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
