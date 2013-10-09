
title: Agenda
build_lists: true

- Sobre a Plataforma
- Desenvolvimento
- Debug/Teste
- Publicação

---

title: Sobre a Plataforma
class: segue dark nobackground

---

title: O que é /O que não é
build_lists: true

- It is a platform for building:
    - installable apps, using JavaScript/HTML/CSS
    - installable via Chrome Web Store
    - with powerful features that are not allowed in the open web
- It is **NOT**:
    - apps that run inside a browser tab
    - apps that access browser "secrets" (cookies, storage, etc)
    - native executable apps (exe, dmg, etc)

---

title: What do you need to:
build_lists: true

- Develop:
    - Any code editor
    - Chrome browser to test
- Publish:
    - Developer account in Chrome Web Store
         - Pay a lifetime fee of $5

---

title: Why JavaScript?
build_lists: true

- well supported
- lots of qualified developers
- evolves quickly
- is not owned by anyone and it is owned by everyone

---

title: But...
build_lists: true

- my code has secrets, JS is not compiled
    - obfuscate JS
    - run sensitive code in your server
    - [Security through Obscurity](http://en.wikipedia.org/wiki/Security_through_obscurity) **is BAD**
        - "Open design: System security should not depend on the secrecy of the implementation or its components" (NIST)
- if I have my API in JSON, anyone could access it
    - use auth
    - even better: [use OAuth 2.0](images/qconsp/oauth.gif)
---

title: But...
build_lists: true

- JS is messy, hard to maintain
    - use [patterns](http://addyosmani.com/resources/essentialjsdesignpatterns/book/)
    - use modules and [RequireJS](http://requirejs.org/)
    - use an MV* framework, like [AngularJS](http://angularjs.org/)
- I want apps that only my company can install
    - CWS allows publishing only to a domain
- My users might not have Chrome installed
    - apps are/will be installable from other browsers

---

title: Compared to native
build_lists: true

- Pros:
    - Safe (runs in a sandbox)
    - Web technologies
    - Low barrier to install
    - Problems "solved": distribution, installation, multi-platform support, paid app download, in-app payments

- Cons:
    - only native features supported by chrome.* APIs

---

title: Compared to the web
build_lists: true

- Pros:
    - easy to run offline
    - run out of the browser
    - powerful features, hardware access, filesystem, full network, etc
    - no need to support multi-platform quirks

- Cons:
    - Updating means pushing a new version to CWS
    - full CSP restrictions
    - no LocalStorage support

---

title: CSP (Content Security Policy)
build_lists: true

- No dynamic code generation: eval(), new Function()
- No inline JavaScript: always use *.js files
- No remote resources: package all resources in app or use AJAX+dataURLs

---

title: For the web dev
build_lists: true

- Frameworks:
    - <span class="green">OK</span>: JQuery, pureCSS, Bootstrap, AngularJS, Underscore, Backbone
    - <span class="red">NEED ATTENTION</span>: dynamic code generation (Handlebar, [Mustache](https://github.com/addyosmani/mustache-for-chromeapps#what-alternatives-are-available-that-work-with-chrome-apps))

- running non-compliant code?
    - webview or sandboxed iframe

---

title: Quizz
subtitle: 10 minutes activity

- Imagine you are converting your app
- Raise the potential difficulties
    - Frameworks using CSP
    - LocalStorage
    - Server-side templating

---

title: Questions?
subtitle: about the platform
class: segue dark nobackground

---

title: Develop
class: segue dark nobackground

---

title: Getting started

- Start your app

    - Yeoman generator ([link](https://github.com/yeoman/generator-chromeapp#readme))
    - Sublime plugin ([link](https://sublime.wbond.net/packages/Chrome%20Apps%20and%20Extensions))
    - Official samples at GitHub ([link](https://github.com/GoogleChrome/chrome-app-samples))

- `chrome://extensions`

    - Enable Developer Mode
    - Open Apps Developer Tool
    - Load unpacked...

---

title: Structure of an app

- [required] manifest.json ([syntax](http://developer.chrome.com/apps/manifest.html), [sample](https://github.com/GoogleChrome/chrome-app-samples/blob/master/hello-world/manifest.json))
- [required] event page ([description](http://developer.chrome.com/apps/app_lifecycle.html#eventpage), [sample](https://github.com/GoogleChrome/chrome-app-samples/blob/master/hello-world/main.js))
- your app (html, css, js, fonts, images, ...)

---

title: chrome.* APIs

- [API search](http://chromeappsnow.com/search.html)
- [Official docs](http://developer.chrome.com/apps/api_index.html)

---

title: Managing windows

chrome.app.window [quick API](http://www.chromeappsnow.com/search.html?q=chrome.app.window&t=a), [official doc](http://developer.chrome.com/apps/app_window.html)

- methods: .create, .current
- Object: [AppWindow](http://developer.chrome.com/apps/app_window.html#type-AppWindow)
- Samples: windows, frameless-window, window-state

---

title: Storage

Many options:

- structured data:
    - IndexedDB: just like in the web

- Key/value map:
    - chrome.storage.local: asynchronous version of LocalStorage
    - chrome.storage.sync: cloud-synced version of chrome.storage.local

- Filesystem:
    - HTML5 sandboxed FileSystem: just like in the web
    - Extended HTML5 FileSystem: to access real files
    - syncFileSystem: cloud-synced filesystem, backed by Google Drive

---

title: Storage
subtitle: chrome.storage.local/sync

chrome.storage.local/sync [official doc](http://developer.chrome.com/apps/app_storage.html)

- methods: get, set, remove, clear, getBytesInUse
- events: onChanged
- Samples: hello-world-sync

---

title: Storage
subtitle: Extended HTML5 FileSystem

chrome.fileSystem [official doc](http://developer.chrome.com/apps/fileSystem.html)

- methods: chooseEntry, retainEntry, restoreEntry
- Samples: filesystem-access

---

title: Storage
subtitle: syncFileSystem

chrome.syncFileSystem [official doc](http://developer.chrome.com/apps/syncFileSystem.html)

- methods: requestFileSystem, getUsageAndQuota, getFileStatus
- Samples: syncfs-editor

---

title: Network
subtitle: Many options

- requesting data (network client):
    - XHR cross domain: just like in the web, but cross domain
    - WebSockets: just like in the web
    - chrome.socket: TCP and UDP raw client sockets

- receiving data (network server):
    - chrome.pushMessaging: Google Cloud Messaging (works when app is not running)
    - chrome.socket: TCP and UDP raw server sockets

---

title: Network
subtitle: chrome.socket

chrome.socket [official doc](http://developer.chrome.com/apps/socket.html)

- generic methods: getNetworkList
- methods for TCP client: create, connect, disconnect, read, write
- methods for TCP server: create, listen, accept, read, write, disconnect
- methods for UDP client: create, connect, sendTo
- methods for UDP server: create, connect, bind, recvFrom
- Samples: tcpserver, webserver, telnet

---

title: Network
subtitle: chrome.pushMessaging

chrome.pushMessaging [official doc](http://developer.chrome.com/apps/pushMessaging.html)

- methods: getChannelId
- events: onMessage
- Samples: push-sample-app

---

title: Identity
subtitle: chrome.identity

chrome.identity [official doc](http://developer.chrome.com/apps/identity.html)

- methods: getAuthToken, launchWebAuthFlow
- Samples: identity, github-auth

---

title: Messaging

- to/from another app or extension:
    - chrome.runtime.sendMessage [official doc](http://developer.chrome.com/apps/runtime.html#method-sendMessage)
    - chrome.runtime.onMessageExternal [official doc](http://developer.chrome.com/apps/runtime.html#event-onMessageExternal)
- from a web page:
    - chrome.runtime.sendMessage from webpages [official doc](http://developer.chrome.com/apps/messaging.html#external-webpage)
- Samples: messaging

---

title: Rich notifications
subtitle: chrome.notifications

chrome.notifications [official doc](http://developer.chrome.com/apps/notifications.html)

- methods: create, clear
- events: onClicked, onClosed, onButtonClicked
- Sample: rich-notifications

---

title: Alarms
subtitle: chrome.alarms

chrome.alarms [official doc](http://developer.chrome.com/apps/alarms.html)

- methods: create, get, getAll, clear, clearAll
- events: onAlarm
- Sample: [Google I/O codelab](http://goo.gl/UHCS8)

---

title: Hardware

- USB
- Bluetooth
- Serial
- Samples: usb-label-printer, adkjs

---

title: Embedding web content
build_lists: true

- Sandboxed iframe
- Webview

---

title: Embedding web content
subtitle: Sandboxed iframe
build_lists: true

- Run "unsafe" packaged code
- Has no access to privileged APIs
- Send messages to it using `iframe.contentWindow.postMessage(message, targetOrigin)`
- Receive messages in it using `window.addEventListener('message', handler)`
- Send messages back to the embedder using `handler.source.postMessage('message', sourceOrigin)`
- Samples: sandboxed content, sandbox

---

title: Embedding web content
subtitle: Webview
build_lists: true

- Run "unsafe" external code
- Has no access to privileged APIs
- Send messages to it using `webview.contentWindow.postMessage(message, targetOrigin)`
- Receive messages in it using `window.addEventListener('message', handler)`
- Send messages back to the embedder using `handler.source.postMessage('message', sourceOrigin)`
- Samples: browser, webview

---

title: Questions?
class: segue dark nobackground

---

title: Debug/test
class: segue dark nobackground

---

title: Debug
build_lists: true

- DevTools
    - apps from CWS: activate flag [enable debuging for packed apps](chrome://flags/#debug-packed-apps)
- Apps Developer Tool
    - activate flag [enable apps-devtool app](chrome://flags/#enable-apps-devtool-app)
- Remote debug
    - chrome --remote-debugging-port=9222 --load-and-launch=APPDIR


---

title: Test
build_lists: true

- Unit tests:
    - mock chrome.* APIs

- Functional/load/etc:
    - use remote debugging and automation over debugging protocol
    - use WebDriver

- doesn't work: PhantomJS

---

title: Publish
class: segue dark nobackground

