'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "index.html": "f189b86f4b2dc5b7c53b4c385147d660",
"/": "f189b86f4b2dc5b7c53b4c385147d660",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"main.dart.js": "799851da1061516f276901a285f1e7d1",
"manifest.json": "1b271a9b0a009f6988f90008ff0365f2",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/LICENSE": "aa67ffd068b7b2666f781cc2e215fb53",
"assets/FontManifest.json": "01700ba55b08a6141f33e168c4a6c22f",
"assets/AssetManifest.json": "c3ec4213d8d30ef82a53e881d2daefbf",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/assets/telegram.png": "a322704c12ea729f0702ac11456442d0",
"assets/assets/discord.png": "7f2461b228679ab1112b0de8601a03a4",
"assets/assets/instagram.png": "e323a1c490acd8ad3f84d1d1a6d78c9a",
"assets/assets/face.webp": "7b3286022eb3d1d9d5e9b52265d0f70e",
"assets/assets/github.png": "396f717aeddd85455f956341d751bf24",
"assets/assets/linkedin.png": "5a5262e359f500357299b1b4d17217be"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
