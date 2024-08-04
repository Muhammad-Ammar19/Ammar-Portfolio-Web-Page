'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "72bba31629bd063415e896889493fc24",
"assets/AssetManifest.bin.json": "1ffd12e100a300f70ce87dcab958c422",
"assets/AssetManifest.json": "89ff5eb34cfafb85bc08ad8f37f141a0",
"assets/assets/fonts/Poppins-Bold.ttf": "08c20a487911694291bd8c5de41315ad",
"assets/assets/fonts/Poppins-ExtraBold.ttf": "d45bdbc2d4a98c1ecb17821a1dbbd3a4",
"assets/assets/fonts/Sora-Bold.ttf": "59f1a10513024e9d080536ea7a744293",
"assets/assets/fonts/Sora-ExtraBold.ttf": "d788f18b38a544fce1c35733d9d1a676",
"assets/assets/fonts/Sora-ExtraLight.ttf": "39c9de554ff1a68219b5cdabc554bcc1",
"assets/assets/fonts/Sora-Light.ttf": "5662cb4703d0aeb2e42e9301ae42e0d3",
"assets/assets/fonts/Sora-Medium.ttf": "e3bb21ba620d898557d6537bbe0e9f10",
"assets/assets/fonts/Sora-Regular.ttf": "e771c55096d16865a23c2795806fb01b",
"assets/assets/fonts/Sora-SemiBold.ttf": "921341e5f1c4ef800e1ee926676791e0",
"assets/assets/fonts/Sora-Thin.ttf": "cf19f5c4ac432cd736815c489aa692d5",
"assets/assets/fonts/unb_pro_bold.otf": "662b0e454451bc59de1c0b12f6c82759",
"assets/assets/images/ammarbg.png": "9dc4e359f9894f39c85e093c23b61fd7",
"assets/assets/images/deeptune.png": "4b7c85896998153c12574cebc59c251c",
"assets/assets/images/deeptune_dark2.jpg": "ae1fd789f3027da56d31c82e329f0f98",
"assets/assets/images/deeptune_dark3.jpg": "867cbb7ee25cd0a7e8927a426f1c2cf2",
"assets/assets/images/Deeptune_gif1.gif": "f8cc7811f089831fcb3e267503a6071f",
"assets/assets/images/Deeptune_gif2.gif": "ef46effcbbae4dd34726363eab2222aa",
"assets/assets/images/Deeptune_gif3.gif": "b9cee8f9d177e9ca35c2cb5f0837a35b",
"assets/assets/images/Deeptune_gif4.gif": "f8f2fa528d60977d9ddfb310b5d9493a",
"assets/assets/images/github.png": "07c11da6720856732fde0133d33a1755",
"assets/assets/images/instagram.png": "ef0da511cfab66e71156709f52dd5eb2",
"assets/assets/images/linkedin.png": "b421b93a33a6fdae029c32d6945af310",
"assets/assets/images/music_library.jpg": "20dffe61016b64cbf80e319f72042613",
"assets/assets/images/twitter.png": "b10e013ab3f57197e07e103b4cd8e61c",
"assets/assets/images/Untitled.png": "8425a814448d135c047d93b6ac7eabd4",
"assets/FontManifest.json": "fdc8ac52037677643c052a4112cdb742",
"assets/fonts/MaterialIcons-Regular.otf": "df03ed496eb9ede99cedf9cf80c11287",
"assets/NOTICES": "158d2b0ce487caa03e9e6bb262dfa077",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "8521152765ac463fb43cc71bb7a89163",
"assets/packages/shadcn_ui/assets/alert-circle.svg": "1443692a964f7b5898f5c4ad1f162479",
"assets/packages/shadcn_ui/assets/bell-ring.svg": "85a9c6dff39a47295bf48fef58a3bf58",
"assets/packages/shadcn_ui/assets/check.svg": "d195799491cf4ed29d8bde4852731bd6",
"assets/packages/shadcn_ui/assets/chevron-down.svg": "401cb93b87962ef28fc973f14c62cedf",
"assets/packages/shadcn_ui/assets/chevron-up.svg": "5d3f9fdbc9711281e44732a588f2ce6f",
"assets/packages/shadcn_ui/assets/terminal.svg": "d89364f32ac61fdadb12eec52f20fbed",
"assets/packages/shadcn_ui/assets/x.svg": "613f6e881105344acc26e2239645c446",
"assets/packages/shadcn_ui/fonts/Geist-Black.otf": "cf003c4f85b590cf60bec1e111ebaaf5",
"assets/packages/shadcn_ui/fonts/Geist-Bold.otf": "d3e1d3dc690224fd330969af598a9c31",
"assets/packages/shadcn_ui/fonts/Geist-Light.otf": "21f434e8c2b53240a0c459b9d119f22f",
"assets/packages/shadcn_ui/fonts/Geist-Medium.otf": "f7ceaf00b58d396cf93ff1ea43740027",
"assets/packages/shadcn_ui/fonts/Geist-Regular.otf": "4d02716b4f2f2e4d9c568c8d24e8e74d",
"assets/packages/shadcn_ui/fonts/Geist-SemiBold.otf": "2c0b1d3e7b1c71bedc2eecf78f7a1d1d",
"assets/packages/shadcn_ui/fonts/Geist-Thin.otf": "8603d0fe0def4273ebeee670eedcfb86",
"assets/packages/shadcn_ui/fonts/Geist-UltraBlack.otf": "f3591a030925294b2bb427e6a6c9b0d8",
"assets/packages/shadcn_ui/fonts/Geist-UltraLight.otf": "b64b37fbec0a925067cbf530e4962fec",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "738255d00768497e86aa4ca510cce1e1",
"canvaskit/canvaskit.js.symbols": "74a84c23f5ada42fe063514c587968c6",
"canvaskit/canvaskit.wasm": "9251bb81ae8464c4df3b072f84aa969b",
"canvaskit/chromium/canvaskit.js": "901bb9e28fac643b7da75ecfd3339f3f",
"canvaskit/chromium/canvaskit.js.symbols": "ee7e331f7f5bbf5ec937737542112372",
"canvaskit/chromium/canvaskit.wasm": "399e2344480862e2dfa26f12fa5891d7",
"canvaskit/skwasm.js": "5d4f9263ec93efeb022bb14a3881d240",
"canvaskit/skwasm.js.symbols": "c3c05bd50bdf59da8626bbe446ce65a3",
"canvaskit/skwasm.wasm": "4051bfc27ba29bf420d17aa0c3a98bce",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.ico": "6a25f9cac9a1f7899992cbd1e8f707fe",
"favicon_io/android-chrome-192x192.png": "4665f0b48f25f6b40ae3cc3cd34e2ede",
"favicon_io/android-chrome-512x512.png": "85bf06fa5716fbfa9d4b5b96166c36bb",
"favicon_io/apple-touch-icon.png": "427ea3094dffc162115e3e002c671b87",
"favicon_io/favicon-16x16.png": "c202d57fb4e9df6c6dd932d7cb74c4ec",
"favicon_io/favicon-32x32.png": "a359635323b9e0edf5b30fb3c85c207f",
"favicon_io/site.webmanifest": "053100cb84a50d2ae7f5492f7dd7f25e",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c",
"flutter_bootstrap.js": "0d7ac4b353b65f75a3f3da2c02cc64c5",
"index.html": "68e912e2f3d3a0698d52f6fbd272fcfa",
"/": "68e912e2f3d3a0698d52f6fbd272fcfa",
"main.dart.js": "c5594d20c61988d5e5867d58b5470438",
"manifest.json": "e65ff52af0a583c4a4c6e2a5fdd5dec5",
"version.json": "bcdcb627e618b231d9d83a2ae5b89ea2"};
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
