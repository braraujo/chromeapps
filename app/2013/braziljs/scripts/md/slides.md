
title: Vida de programador front-end
class: textonpanel nobackground fill notransition opaque-bg op0
image: images/braziljs/complex_road.jpg

- HTML
- assets

---

title: Vida de programador front-end
class: textonpanel nobackground fill notransition opaque-bg op1
image: images/braziljs/complex_road.jpg

- HTML
- assets
- **JS**
- **CSS**

---

title: Vida de programador front-end
class: textonpanel nobackground fill notransition opaque-bg op2
image: images/braziljs/complex_road.jpg

- HTML
- assets
- JS
- **SCSS->**CSS

---

title: Vida de programador front-end
class: textonpanel nobackground fill notransition opaque-bg op3
image: images/braziljs/complex_road.jpg

- HTML
- assets
- **CoffeeScript->**JS
- SCSS->CSS

---

title: Vida de programador front-end
class: textonpanel nobackground fill notransition opaque-bg op4
image: images/braziljs/complex_road.jpg

- HTML
- assets
- **libs e frameworks**
- CoffeeScript->JS
- SCSS->CSS

---

title: Vida de programador front-end
class: textonpanel nobackground fill notransition opaque-bg op5
image: images/braziljs/complex_road.jpg

- **I18N->**HTML
- assets
- libs e frameworks
- CoffeeScript->JS
- SCSS->CSS

---

title: Vida de programador front-end
class: textonpanel nobackground fill notransition opaque-bg op6
image: images/braziljs/complex_road.jpg

- I18N->HTML
- assets
- libs e frameworks
- CoffeeScript->JS**->minification/obfuscation**
- SCSS->CSS**->minification**

---

title: Vida de programador front-end
class: textonpanel nobackground fill notransition opaque-bg op7
image: images/braziljs/complex_road.jpg

- I18N->HTML
- assets**: sprites**
- libs e frameworks
- CoffeeScript->JS->minification/obfuscation
- SCSS->CSS->minification

---

title: Vida de programador front-end
class: textonpanel nobackground fill notransition opaque-bg op8
image: images/braziljs/complex_road.jpg

- I18N->HTML
- assets: sprites**, image optim**
- libs e frameworks
- CoffeeScript->JS->minification/obfuscation
- SCSS->CSS->minification

---

title: Vida de programador front-end
class: textonpanel nobackground fill notransition opaque-bg op9
image: images/braziljs/complex_road.jpg

- I18N->HTML
- assets: sprites, image optim
- libs e frameworks
- CoffeeScript->JS->minification/obfuscation
- SCSS->CSS->minification
- **build: teste, homologação, produção**

---

title: Vida de programador front-end
class: textonpanel nobackground fill notransition opaque-bg op10
image: images/braziljs/complex_road.jpg

- I18N->HTML
- assets: sprites, image optim
- libs e frameworks
- CoffeeScript->JS->minification/obfuscation
- SCSS->CSS->minification
- **testes unitários**
- **regressão em headless browser**
- build: teste, homologação, produção

---

title: Vida de programador front-end
class: textonpanel nobackground fill notransition opaque-bg op11
image: images/braziljs/complex_road.jpg

- I18N->HTML
- assets: sprites, image optim
- libs e frameworks
- CoffeeScript->JS->minification/obfuscation
- SCSS->CSS->minification
- testes unitários
- regressão em headless browser
- build: teste, homologação, produção
- **deploy: teste, homologação, produção**

---

title: Vida de programador front-end
class: textonpanel nobackground fill notransition opaque-bg op12
image: images/braziljs/complex_road.jpg

- I18N->HTML
- assets: sprites, image optim
- libs e frameworks
- CoffeeScript->JS->minification/obfuscation
- SCSS->CSS->minification
- testes unitários
- regressão em headless browser
- build: teste, homologação, produção
- **versionamento**
- deploy: teste, homologação, produção
 
---

title: Vida de programador front-end
class: textonpanel nobackground fill notransition
image: images/braziljs/complex_road.jpg

- I18N->HTML
- assets: sprites, image optim
- libs e frameworks
- CoffeeScript->JS->minification/obfuscation
- SCSS->CSS->minification
- testes unitários
- regressão em headless browser
- build: teste, homologação, produção
- versionamento
- deploy: teste, homologação, produção
 
---

title: 
class: nobackground fill
image: images/braziljs/complex_road.jpg

---

title: 
class: nobackground fill center-bg
image: images/braziljs/subway_map.jpg

---

title: Vida de programador front-end
class: textonpanel nobackground fill center-bg opaque-bg op5
build_lists: true
image: images/braziljs/subway_map.jpg

- <p style="text-decoration: line-through;"> I18N->HTML; assets: sprites, image optim; libs e frameworks; CoffeeScript->JS->minification/obfuscation; SCSS->CSS->minification; testes unitários; regressão em headless browser; build: teste, homologação, produção; versionamento; deploy: teste, homologação, produção!</p>
- **grunt build && grunt deploy**


---

title: 
class: nobackground fill
image: images/braziljs/grunt.svg

<blockquote>GRUNT<br>The JavaScript Task Runner</blockquote>

---

title: Vida de programador front-end
class: fill textonpanel opaque-bg op4
image: images/braziljs/math_equation.jpg
build_lists: true

Bootstrap 3.0 saiu, você precisa atualizar!

- (fica sabendo pelo Twitter)
- Navega pro site do Bootstrap
- Faz download do zip
- Localiza CSSs e JavaScripts e copia para o seu projeto
- Descobre incompatibilidades
- Atualiza libs dependentes

---

title: Vida de programador front-end
class: fill textonpanel opaque-bg op4
image: images/braziljs/math_equation.jpg
build_lists: true

- <p style="text-decoration: line-through;"> (fica sabendo pelo Twitter); Navega pro site do Bootstrap; Faz download do zip; Localiza CSSs e JavaScripts e copia para o seu projeto; Descobre incompatibilidades; Atualiza libs dependentes</p>

- **bower update bootstrap**


---

title: 
class: nobackground fill
image: images/braziljs/bower.svg

<blockquote>BOWER<br>Package manager for the web</blockquote>

---

title: Vida de programador front-end
class: textonpanel nobackground fill opaque-bg op5
image: images/braziljs/roadsigns.jpg
build_lists: true

Mês seguinte, projeto novo:

- copy and paste do projeto antigo, muda HTMLs, JSs, CSSs, assets
- reza um terço
- executa **bower build**
<ul style="font-size: 14px !important">
    <li>I18N->HTML
    <li> assets: sprites, image optim
    <li> libs e frameworks
    <li> CoffeeScript->JS->minification/obfuscation
    <li> SCSS->CSS->minification
    <li> testes unitários
    <li> regressão em headless browser
    <li> build: teste, homologação, produção
    <li> versionamento
    <li> deploy: teste, homologação, produção
</ul>

---

title: 
class: nobackground fill opaque-bg op7
image: images/braziljs/roadsigns.jpg

<blockquote style="margin-top: 10px; font-size: 36px">
<strong>Technical debt:</strong> "an obligation incurred when you choose a design or construction approach that's expedient in the short term but that increases complexity and is more costly in the long term."
<cite>Ward Cunningham</cite>
</blockquote>

---

title: 
class: nobackground fill
image: images/braziljs/yeoman.svg

<blockquote>YEOMAN. Modern workflows for modern webapps</blockquote>

---

title: Yeoman
class: big side-img
build_lists: true

![](images/braziljs/super_dog.jpg)

- Automatizar a criação de apps
- Configurar dependências
- Configurar workflows
- <img style="position: absolute; top: 180px; max-width: 40%" src="images/braziljs/animal_heroes.png">

---

title:
content_class: vcenter flexbox


![](images/braziljs/yeoman_workflow.jpg)


---

title: 
class: nobackground fill center-bg
image: images/braziljs/elvys_fever.jpg

