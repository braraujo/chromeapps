
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

title: O que é & O que não é
build_lists: true

- É uma plataforma para construção:
    - Aplicativos instaláveis, utilizando JavaScript/HTML/CSS
    - Instalável via Chrome Web Store
    - com funcionalidade poderosas não permitidas em aplicativos web tradicionais
- **Não** é:
    - aplicativos que executam em uma aba do browser
    - Aplicativos que acessam informações "sensíveis" (cookies, storage, etc)
    - Executáveis nativos (exe, dmg, etc)

---

title: O que precisamos para começar ?
build_lists: true

- Desenvolver:
    - Qualquer editor de código (Notepad++, Sublime, etc...)
    - Navegador Google Chrome para testar
- Publicar:
    - Uma conta de desenvolvedor na Chrome Web Store
         - Pagar uma taxa única de $5

---

title: Por quê JavaScript?
build_lists: true

- amplamente suportado
- grande quantidade de profissionais habilitados
- desenvolvimento rápido
- não pertence a ninguém e pertence à todo mundo

---

title: Masssss...
build_lists: true

- meu código possui algoritmos que não quero compartilhar, JS não é compilado
    - obfuscate JS
    - execute códigos que necessitam de segurança no servidor
    - [Segurança via Obfuscação ](http://en.wikipedia.org/wiki/Security_through_obscurity) **é RUIM**
        - "Open design: System security should not depend on the secrecy of the implementation or its components" (NIST)
- Se minha API está estruturada com JSON qualquer um poderá acessar
    - use autenticação
    - ainda melhor: [use OAuth 2.0](images/qconsp/oauth.gif)
---

title: Masssss...
build_lists: true

- JS é uma bagunça, muito difícil de se manter
    - use [padrões](http://addyosmani.com/resources/essentialjsdesignpatterns/book/)
    - use módulos e [RequireJS](http://requirejs.org/)
    - use algum framework MV*, por exemplo [AngularJS](http://angularjs.org/)
- Meus aplicativos devem ser instalados apenas pela minha empresa
    - CWS permite publicação apenas para um determinado domínio
- Meus usuários podem não ter o Chrome instalado
    - apps serão instaláveis em outros navegadores

---

title: Chrome App vs. Aplicação nativa
build_lists: true

- Pros:
    - Segurança (executa em uma caixa de areia - sandbox)
    - Utiliza tecnologias web
    - Fácil instalação
    - Problemas "resolvidos": distribuição, instalação, multi-plataforma, monetização, monetização interna

- Contras:
    - recursos nativos são permitidos apenas via APIs chrome.*

---

title: Chrome Apps vs. Sites WEB
build_lists: true

- Pros:
    - executa de forma offline
    - roda fora do browser
    - Acesso a alguns recursos nativos como rede, sistema de arquivos, usb, etc...
    - não se preocupa com detalhes que mudam de plataforma para plataforma

- Contras:
    - Atualizações feitas através de nova versão no CWS
    - Restrições definidas pelas políticas CSP (Content Security Policy)
    - no LocalStorage (HTML5) support

---

title: CSP (Content Security Policy)
build_lists: true

- Não permite geração dinâmica de código: eval(), new Function()
- Não permite códigos JavaScript em linha: sempre utilizar arquivos *.js

---

title: Acelerando Desenvolvimento
build_lists: true

- Frameworks:
    - <span class="green">OK</span>: JQuery, pureCSS, Bootstrap, AngularJS, Underscore, Backbone
    - <span class="red">ATENÇÃO</span>: geração de código dinâmica (Handlebar, [Mustache](https://github.com/addyosmani/mustache-for-chromeapps#what-alternatives-are-available-that-work-with-chrome-apps))

- precisa executar código não compatível?
    - utilize webview ou sandboxed iframe

---

title: Perguntas?
class: segue dark nobackground

---

title: Desenvolvendo
class: segue dark nobackground

---

title: Primeiros Passos

- Crie sua aplicação

    - Yeoman generator ([link](https://github.com/yeoman/generator-chromeapp#readme))
    - Sublime plugin ([link](https://sublime.wbond.net/packages/Chrome%20Apps%20and%20Extensions))
    - Exemplos oficiais no GitHub ([link](https://github.com/GoogleChrome/chrome-app-samples))

- `chrome://extensions`

    - Ative o modo desenvolvedor
    - Abra o painel de ferramentas do desenvolvedor
    - Load unpacked...

---

title: Estrutura de um aplicativo

- [required] manifest.json ([sintaxe](http://developer.chrome.com/apps/manifest.html), [exemplo](https://github.com/GoogleChrome/chrome-app-samples/blob/master/hello-world/manifest.json))
- [required] event page ([descrição](http://developer.chrome.com/apps/app_lifecycle.html#eventpage), [exemplo](https://github.com/GoogleChrome/chrome-app-samples/blob/master/hello-world/main.js))
- sua aplicação (html, css, js, fonts, images, ...)

---

title: APIs chrome.* 

- [API search](http://chromeappsnow.com/search.html)
- [Documentação oficial](http://developer.chrome.com/apps/api_index.html)

---

title: Gerenciando janelas

chrome.app.window [API](http://www.chromeappsnow.com/search.html?q=chrome.app.window&t=a), [docs](http://developer.chrome.com/apps/app_window.html)

- methods: .create, .current
- Object: [AppWindow](http://developer.chrome.com/apps/app_window.html#type-AppWindow)
- Samples: windows, frameless-window, window-state

---

title: Armazenamento

Várias opções:

- dados estruturados:
    - IndexedDB: exatamente como no HTML5 tradicional

- mapa chave/valor:
    - chrome.storage.local: Versão assíncrona do LocalStorage
    - chrome.storage.sync: Versão sincronizada com cloud-sync do chrome.storage.local

- Sistema de arquivos:
    - HTML5 FileSystem: exatamente como em aplicativos WEB
    - HTML5 FileSystem Extendido: para acessar arquivos reais
    - syncFileSystem: arquivos sincronizados com cloud, baseado no Google Drive

---

title: Armazenamento
subtitle: chrome.storage.local/sync

chrome.storage.local/sync [docs](http://developer.chrome.com/apps/app_storage.html)

- métodos: get, set, remove, clear, getBytesInUse
- eventos: onChanged
- exemplos: hello-world-sync

---

title: Armazenamento
subtitle: HTML5 FileSystem Extendido

chrome.fileSystem [docs](http://developer.chrome.com/apps/fileSystem.html)

- métodos: chooseEntry, retainEntry, restoreEntry
- exemplos: filesystem-access

---

title: Armazenamento
subtitle: syncFileSystem

chrome.syncFileSystem [docs](http://developer.chrome.com/apps/syncFileSystem.html)

- métodos: requestFileSystem, getUsageAndQuota, getFileStatus
- exemplos: syncfs-editor

---

title: Rede
subtitle: várias opções

- requisitando dados (lado cliente):
    - XHR (XMLHttpRequest) cross domain: exatamente como na web tradicional, mas cross domain
    - WebSockets: exatamente como nas aplicações tradicionais
    - chrome.socket: Sockets TCP e UDP

- recebendo dados (lado servidor):
    - chrome.pushMessaging: Google Cloud Messaging - GCM (entrega a mensagem mesmo se o aplicativo não estiver aberto)
    - chrome.socket: Sockets TCP e UDP

---

title: Rede
subtitle: chrome.socket

chrome.socket [docs](http://developer.chrome.com/apps/socket.html)

- métodos genéricos: getNetworkList
- métodos TCP client: create, connect, disconnect, read, write
- métodos TCP server: create, listen, accept, read, write, disconnect
- métodos UDP client: create, connect, sendTo
- métodos UDP server: create, connect, bind, recvFrom
- Exemplos: tcpserver, webserver, telnet

---

title: Rede
subtitle: chrome.pushMessaging

chrome.pushMessaging [docs](http://developer.chrome.com/apps/pushMessaging.html)

- métodos: getChannelId
- eventos: onMessage
- exemplos: push-sample-app

---

title: Identity
subtitle: chrome.identity

chrome.identity [official doc](http://developer.chrome.com/apps/identity.html)

- métodos: getAuthToken, launchWebAuthFlow
- exemplos: identity, github-auth

---

title: Mensageria

- de/para outra app ou extension:
    - chrome.runtime.sendMessage [docs](http://developer.chrome.com/apps/runtime.html#method-sendMessage)
    - chrome.runtime.onMessageExternal [docs](http://developer.chrome.com/apps/runtime.html#event-onMessageExternal)
- de uma página web:
    - chrome.runtime.sendMessage de webpages [docs](http://developer.chrome.com/apps/messaging.html#external-webpage)
- exemplos: messaging

---

title: Rich notifications
subtitle: chrome.notifications

chrome.notifications [docs](http://developer.chrome.com/apps/notifications.html)

- métodos: create, clear
- eventos: onClicked, onClosed, onButtonClicked
- exemplo: rich-notifications

---

title: Alarmes
subtitle: chrome.alarms

chrome.alarms [docs](http://developer.chrome.com/apps/alarms.html)

- métodos: create, get, getAll, clear, clearAll
- eventos: onAlarm
- exemplo: [Google I/O codelab](http://goo.gl/UHCS8)

---

title: Hardware

- USB
- Bluetooth
- Serial
- exemplos: usb-label-printer, adkjs,arcaduino,freeway

---

title: Adicionando conteúdo web
build_lists: true

- Sandboxed iframe
- Webview

---

title: Adicionando conteúdo web
subtitle: Sandboxed iframe
build_lists: true

- Executa código "inseguro"
- Não possui acesso às APIs privilegiadas
- Envie mensagens para o conteúdo via `iframe.contentWindow.postMessage(message, targetOrigin)`
- Receba mensagens via `window.addEventListener('message', handler)`
- Responda a mensagem recebida utilizando `handler.source.postMessage('message', sourceOrigin)`
- exemplos: sandboxed content, sandbox

---

title: Adicionando conteúdo web
subtitle: Webview
build_lists: true

- Executa código "inseguro"
- Não possui acesso às APIs privilegiadas
- Envie mensagens para o conteúdo via`webview.contentWindow.postMessage(message, targetOrigin)`
- Receba mensagens via `window.addEventListener('message', handler)`
- Responda a mensagem recebida utilizando `handler.source.postMessage('message', sourceOrigin)`
- exemplos: browser, webview

---

title: Perguntas?
class: segue dark nobackground

---

title: Debug/teste
class: segue dark nobackground

---

title: Debug
build_lists: true

- DevTools
    - Aplicativos vindos da CWS: Ative a flag [ativando debug para package apps](chrome://flags/#debug-packed-apps)
- Apps Developer Tool
    - ative a flag [ativando apps-devtool app](chrome://flags/#enable-apps-devtool-app)
- Debug remoto
    - chrome --remote-debugging-port=9222 --load-and-launch=APPDIR


---

title: Teste
build_lists: true

- Testes unitários:
    - mock chrome.* APIs

- Funcionais/carga/etc:
    - utilize debug remoto e automatize tarefas pelo protocolo de debug
    - use WebDriver

- não funciona: PhantomJS



---

title: Exemplos
build_lists: true

- Extensions
    - Busca CEP

- Apps
    - Simple Game Pad
    - FreeWay (Atravesse a Galinha)

