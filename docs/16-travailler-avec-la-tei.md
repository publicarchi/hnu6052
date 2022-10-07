## HNU3052/HNU6052 Humanités numériques : introduction à la TEI

# Travailler avec la TEI

---

## Introduction

???

En ayant recours à la Text Encoding Initiative (TEI), on adopte le **principal standard informatique** actuellement employé dans le **domaine de l’édition critique** numérique. La TEI fournit tout à la fois un cadre de travail pour traiter et analyser les sources, et enregistrer le résultat de l’activité scientifique qui aura été menée. Toutefois, les fichiers sources XML-TEI ne sont pas directement destinés à la consultation. La TEI constitue plutôt **un format pivot à partir duquel on produit diverses "manifestations" du texte en fonction des besoins** et des contextes de lecture (pages xhtml, fichiers epub, pdf, api, etc.). Le manque d’outils adaptés, faciles d’emploi, pour le traitement, l’analyse et la publication de ces fichiers est souvent considéré comme un des principaux freins à l’utilisation de la TEI.

Du fait de l’utilisation courante de la TEI dans des projets de recherche, plusieurs solutions pour la publication d’édition critiques électroniques ont été développées ces dernières années, soit sous la forme de chaînes éditoriales propres soit sous la forme de logiciels libres ou open source. Il convient de choisir une solution de publication adaptée à nos besoins mais qui puisse être également maintenue dans la durée. Plusieurs solutions s’offrent à vous qui peuvent plus ou moins bien répondre aux besoins de votre projet, ou s’inscrire dans la politique générale de votre institution. Dans tous les cas, il n’y a pas de solution miracle, et la sélection d’un outil résulte d’un arbitrage entre la complexité technique et l’étendue des fonctionnalités attendues.

---

## 1. Quelques questions pratiques

---

### 1. Quelques questions pratiques

## Questions courantes

- Qui doit encoder&nbsp;?
- Un schéma est-il figé dans le marbre&nbsp;?
- Pourquoi faut-il produire une documentation&nbsp;?
- Comment publier mes données&nbsp;?

---

### 1. Quelques questions pratiques

## Quel éditeur XML choisir&nbsp;?

- N’importe quel éditeur de texte
- Atom + modules dédiés
- Visual Studio + modules dédiés
- XMLMind XML Editor
- Pourquoi choisir oXygen XML Editor&nbsp;?

---

### 1. Quelques questions pratiques

## Travailler avec l’IDE Visual Studio Code

L'IDE ou éditeur de texte [VSCode](https://visualstudio.microsoft.com/fr/) dispose d’[une extension XML pour prévisualiser les documents](https://marketplace.visualstudio.com/items?itemName=e-editiones.tei-publisher-vscode) accompagnée d’une exention pour la validation [XML Scholarly XML](https://marketplace.visualstudio.com/items?itemName=raffazizzi.sxml) ou [XML Red Hat](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-xml) :

- libre et open Source
- validation contre un schéma ;
- auto-complétion contre un schéma ;
- prévisualisation HTML ;
- nécessite quelques réglages ;
- pas de Framework TEI par défaut.

Mais moins puissant qu’oXygen.

---

### 1. Quelques questions pratiques

## Travailler avec l’IDE Atom

L’IDE ou éditeur de texte [Atom](https://atom.io/) peut également depuis quelques années être facilement configuré pour travailler sur des  documents TEI avec plusieurs modules. [TEI Framework](https://atom.io/packages/tei-framework) ou [AtomicTEI](https://github.com/aerhard/xml-demo-package) en utilisant le plugiciel [linter-autocomplete-jing](https://github.com/aerhard/linter-autocomplete-jing)

- Libre et Open Source
- validation contre un schéma ;
- auto-complétion contre un schéma ;
- nécessite quelques réglages ;
- pas de Framework TEI par défaut.

Dunning, Andrew. 2018. « Getting started with editing TEI XML using Atom ». *Andrew Dunning*. 24 avril. https://andrewdunning.ca/getting-started-editing-tei-xml-atom.

Schöch, Christof. 2020. « Can Atom replace oXygen? » Billet. *The Dragonfly’s Gaze*. 28 mars. https://dragonfly.hypotheses.org/1127.

---

## 2. Comment traiter ses données **XML-TEI**&nbsp;?

---

### 2. Comment traiter ses données **XML-TEI**&nbsp;?
## La TEI comme format pivot

- Sorties HTML
- Sorties EPub, Kindle, etc.
- Sorties papier (PDF, LateX, etc.)

---

### 2. Comment traiter ses données **XML-TEI**&nbsp;?
## Le stockage des données

- Stockage des fichiers à plat (Flat File Storage)
- Bases de données relationnelles et orientées objet
- Le stockage natif des données XML

???

Travailler avec des données XML nécessite de pouvoir effectuer trois types d’opérations distinctes&nbsp;:

* ajouter de l’information dans l’entrepôt,
* chercher et retrouver l’information dans l’entrepôt,
* et mettre à jour l’information contenue dans l’entrepôt.

Plusieurs solutions pour les bases de données XML ont été proposés parmi lesquelles&nbsp;:

* le stockage de fichiers à plat,
* l’utilisation de bases de données relationnelles,
* le stockage natif des données XML comme dans des bases de données XML natives ou d’autres systèmes de gestion.

---

### 2. Comment traiter ses données **XML-TEI**&nbsp;?
## Le Stockage des fichiers à plat

(Flat File Storage)

- Solution la plus simple
- L’entité principale est le document
- Simple système de fichier
- Efficace et peu coûteux
- Recherches dans le document prohibitives

???

C’est la solution la plus simple, le document complet constitue l’entité principale, les structures internes ne jouant aucun rôle. Cette solution peut être implémentée avec n’importe quel système de fichiers. Si le stockage est efficace et peu coûteux, d’autres opérations comme la recherche qui requièrent un accès à la structure interne du document peuvent devenir prohibitives.

Le stockage à plat n’est pas le plus approprié lorsque la recherche est fréquente car le niveau de granularité du stockage est le document entier et non pas son contenu.

---

### 2. Comment traiter ses données **XML-TEI**&nbsp;?
## Bases de données relationnelles (et orientées objet)

- Fonctionnalités d’indexation
- Nécessitent une conversion dans un modèle relationnel (jointures coûteuses)
- Proposition de bases de données orientées objet pour refléter les structures imbriquées (passé)
- Certains SGBDR proposent des APIs XML (XQuery, XPath)

**Souvent obsolète et pas toujours adapté**

???

Les données XML peuvent être stockées dans des bases de données relationnelles. Elles peuvent ainsi bénéficier des fonctionnalités d’indexation, de transaction et d’optimisation des requêtes habituellement offertes par ces systèmes. Cependant, comme les données XML sont des données semi-structurées, elles nécessitent une conversion dans un modèle de données relationnelles. Compte-tenu des différences significatives inhérentes aux modèles relationnels et aux structures imbriquées des données semi-structurées, ces conversions impliquent généralement des jointures coûteuses pour le traitement des requêtes. L’utilisation de bases de données relationnelles orientées objet a été proposée pour refléter les structures imbriquées des données semi-structurées afin de réduire les redondances et ces jointures.

Ces solutions sont le plus souvent obsolètes et pas toujours bien adaptées si on les compare aux bases de données XML natives.

---

### 2. Comment traiter ses données **XML-TEI**&nbsp;?
## Bases de données XML natives

- Préservent la structure physique des documents XML (éléments, attributs, entités)
- Stockent des documents avec ou sans déclaration préalable du schéma
- Permettent d’accéder aux documents à partir des API spécifiques à XML (XPath, XQuery)

cf. Bourret, Ronald. 2000. « XML Database Products: Native XML Databases ». Rpbourret.com. 2010 2000. http://www.rpbourret.com/xml/ProdsNative.htm)

Deux produits libres très utilisés : [BaseX](https://basex.org/) et [eXist-db](http://exist-db.org/exist/apps/homepage/index.html)

???

Conçus spécialement pour gérer des données XML, les systèmes de bases de données XML natifs ont l’avantage de ne pas nécessiter d’opérations de conversion. Les techniques de stockage et de traitement des requêtes adoptées par les bases de données XML sont habituellement plus efficientes que celles basées sur le stockage de fichiers à plats et les bases de données relationnelles.

Plusieurs langages de requêtes ont été proposés pour manipuler des données XML (XML-QL, XML-GL, Quilt, XPath et XQuery). Le principal langage de requête pour XML qui ait été standardisé est XQuery. Il repose sur l’utilisation d’expressions de chemins XPath qui adressent des ensembles des parties spécifiques des documents XML.

Il existe de nombreux logiciels libres ou propriétaires. Marklogic propose une solution commerciale particulièrement performante. Les bases de données XML natives les plus utilisées dans le domaine des humanités numériques sont celles proposées par eXist et BaseX.

---

### 2. Comment traiter ses données **XML-TEI**&nbsp;?
## La transformation de XML

- des langages de transformation de XML ([XSLT](https://www.w3.org/TR/xslt-30/), XSL-FO)
- capables de générer d’autres formats à partir du document source
- des langages de requêtes ([XQuery](https://www.w3.org/XML/Query/))

???

Plusieurs langages de transformation ou de requête pour les données XML peuvent être particulièrement utiles pour exploiter des données XML-TEI.

L’utilisation de XML comme format pivot en vue d’une publication de sources textuelles dans un autre format est un cas typique d’utilisation de cette technologie. Plusieurs langages de transformation de segments XML ont été proposés, notamment XSLT et XSL-FO qui reposent tous deux sur le langage XPath.

Si XSLT constitue une solution très efficace pour passer d’un format XML donné à un autre, comme par exemple XHTML, les processeurs disponibles pour réaliser cette transformation sont limités à la version 1.0 du langage dans l’environnement courant LAMP (Linux Apache PHP). Les processeurs XSLT 2.0 ou 3.1 et XQuery sont généralement incompatibles avec cet environnement, c’est une des raisons pour lesquelles la plupart des applications pour travailler avec des sources XML sont développées en Java pour pleinement tirer parti des possibilités de ces langages et du modèle de données. Récemment les dernières versions du langage ont été portées dans d’autres environnements comme Erlang ou NodeJS.

---

### 2. Comment traiter ses données **XML-TEI**&nbsp;?
## Processus de transformation **XSL**

![](images/xsltProcessing.svg)

???

Ce schéma présente le processus à l’œuvre lorsque l’on associe une feuille de style et un document source.

Un programme XSLT spécifie une sortie à produire à partir d’un segment ou d’un fichier XML, si ce segment existe dans le document fourni en entrée et répond à certains critères.
Le résultat est une fonction de l’entrée.

---

### 2. Comment traiter ses données **XML-TEI**&nbsp;?
## Que peut faire XSLT&nbsp;?

![](images/whatXsltCanDo.png)

---

### 2. Comment traiter ses données **XML-TEI**&nbsp;?
## Les bases de données XML natives

Elles indexent les documents XML sur la base de leur structure.

Facilitent l’exécution de requêtes sur les fichiers

* [Basex](http://basex.org/)
* [eXist-DB](http://exist-db.org/)
* [Marklogic](http://www.marklogic.com/) (propriétaire)

Exemples d’utilisation pour la TEI

- [Synops**X**](http://synopsx.github.io)
- [TEI-Publisher](https://teipublisher.com/)

---

### 2. Comment traiter ses données **XML-TEI**&nbsp;?
## Arguments en faveur de l’utilisation d’une base de données XML

- Orientation document qui facilite le développement d’application
- Accès à la structure et aux données facilité
- Fonctionnalités qui s’inscrivent dans le respect des normes et l’implémentation des standards XML (XSL, XProc, XForms, XLink, etc.)

---

### 2. Comment traiter ses données **XML-TEI**&nbsp;?
## Stratégies de publication

#### Produire un site statique avec des transformations XSL
Le résultat de la transformation est placée sur le serveur sous forme d’un site web statique.

Tous les navigateurs étant compatibles avec XSLT 1.0, il est également possible de servir les pages en XML en leur associant une transformation.

#### Produire un site dynamique avec des pipelines de traitement
Des environnements tels que [Cocoon](http://cocoon.apache.org/) ou [XSLWeb](https://github.com/Armatiek/xslweb) permettent de développer des chaînes de traitement qui peuvent être exécutées dynamiquement côté serveur

#### Produire un site dynamique avec une base de données XML native
Une base de données XML native permet l’exécution dynamique des requêtes. Particulièrement adapté pour des contenus sujets à des modifications ou les requêtes non pré-définies

---

### 2. Comment traiter ses données **XML-TEI**&nbsp;?
## Hébergement des données

Le problème de l’environnement :

* Beaucoup d’applications en environnement Java
* Pas de solutions d’hébergement standard

La [grille de service de la TGIR Huma-Num](http://www.huma-num.fr/service/grille-de-services) en France

* Solutions d’hébergement pour les projets du domaine de l’Enseignement supérieur et de la recherche
* Habitués à gérer ce genre de demandes
* Besoin de se conformer à des [bonnes pratiques](http://www.huma-num.fr/ressources/guide-des-bonnes-pratiques-numeriques)
* Archivage pérenne

???

Comment les créateurs de données en TEI dans des petites institutions peuvent-ils publier et archiver leurs données, et disposer d’un support technique pour leurs projets&nbsp;?

Une question d’échelle : intérêt de la publication de regroupement de textes, et de la mutualisation et des économies possibles.

Question de la vulnérabilité des ressources produites. Choix de technologies libres et ouvertes pour la publication qui garantissent l’indépendance à l’égard d’une infrastructure commerciale. Le médium numérique requiert néanmoins une attention particulière à sa conservation. La production d’une édition électronique nécessite d’envisager sa maintenance dans le temps sans quoi elle risque de devenir obsolète ou de ne plus être disponible.

Grille de service du TGIR HumaNum offre un hébergement web adapté pour accueillir des servlets java. Environnement sécurisé et robuste fournit dans le cadre d’un partenariat avec le centre de calcul IN2P3 à Lyon. Solution semble-t-il favorisée par le CNRS pour les projets en Digital Humanities car elle permet une mutualisation au niveau de l’infrastructure serveur, virtualisation, maintenance, montée en charge, performance, évolutivité en fonction des besoins, etc. Cette solution a en outre l’avantage de la gratuité pour les projets ANR et réalisés dans le cadre de Labex.

Outre l’hébergement web, l’offre de la TGIR HumaNum un ensemble de services qui peuvent s’avérer nécessaires. Pérennisation des données, et archivage à long terme réalisé en partenariat avec le XXXX de Montpellier. Serveur de document, accès SSH, etc.

Auc Canada, nous essayons de développer un projet pilote de ce genre avec [Calcul Québec](https://www.calculquebec.ca/)

---

## 3. Tirer parti de l’outillage TEI

???

Lorsque des documents sont encodés en XML, il devient relativement aisé de les manipuler et de les transformer en utilisant différents langages informatiques tels que XSLT ou XQuery. Tout en étant extrêmement puissants, ces langages peuvent apparaître complexes et difficiles à maîtriser. Aussi, la Text Encoding Initiative met à disposition plusieurs outils pour faciliter la transformer des documents TEI en différents formats, sans nécessairement avoir besoin de connaissances approfondies en programmation dans ces langages.

Les XSL Stylesheets développées par Sebastian Rahtz, sont un ensemble de transformations XSLT qui sert notamment à produire les Guidelines et le site web de la TEI. Celles-ci sont également présentes au sein du Framework TEI offert par l’éditeur XML oXygen. Nous vous proposons ici une rapide introduction pour apprendre à les utiliser afin de pouvoir produire des sorties dans différents formats (xhtml, LateX, pdf, docx, etc.) à partir de vos documents TEI.

---

### 3. Tirer parti de l’outillage TEI
## **CSS** Cascading stylesheets

Les CSS peuvent être utilisées avec n’importe quel document de format structuré. Il est donc possible de styler un document XML directement avec CSS.

Toutefois, l’expressivité du langage reste limitée ainsi que les possibilités de restructuration de l’arbre XML

[https://www.w3.org/Style/CSS/Overview.en.html](https://www.w3.org/Style/CSS/Overview.en.html)

Bos, Bert. 2000. « Comment ajouter du style à XML ». 2000. https://www.w3.org/Style/styling-XML.fr.html.

---

### 3. Tirer parti de l’outillage TEI
## TEI stylesheets

Framework de transformations XML-TEI

Sebastian Rhatz (Oxford)

[https://github.com/TEIC/Stylesheets](https://github.com/TEIC/Stylesheets)

---

### 3. Tirer parti de l’outillage TEI
## Les XSL Stylesheets

**XSLT Stylesheets** = une bibliothèque de XSL (XSLT et XSL-FO) pour transformer des documents TEI vers toute sorte de formats

* conçues pour les besoins du TEI Consortium
* traitement de documents ODD pour Roma
* génération des Guidelines en XHTML
* transformations vers LaTeX, MsWord (.docx), OpenOffice (.odt), epub, etc.
* et bien d’autres choses encore…

---

### 3. Tirer parti de l’outillage TEI
## Pourquoi utiliser les XSL Stylesheets&nbsp;?

En dehors du fait d’être faignants…

* elles résolvent divers problèmes plus ou moins courants
* elles couvrent une grande variété de formats
* collaboration possible à un projet open-source
* largement distribuées sous diverses formes

???

* elles résolvent divers problèmes, plus ou moins courants, auxquels vous n’aurez pas besoin de penser
* elles couvrent une grande variété de formats dont vous pourriez un jour avoir besoin
* puisqu’il s’agit d’un projet open-source, il est possible d’y contribuer
* enfin, les XSL Stylesheets ont beaucoup d’utilisateurs et sont déjà largement distribuées sous diverses formes

---

### 3. Tirer parti de l’outillage TEI
## Limitations des XSL Stylesheets

* ne fournissent pas nécessairement des rendus pour tous les éléments de la TEI
* toutes les valeurs possibles d’attribut ne sont pas prises en compte (ex. `@rend`, `@type`)
* les différents formats de sortie peuvent être incomplets

En revanche elles permettent de régler de nombreux problèmes courants.

La prise en main n’est pas toujours facile.

???

Il est important de comprendre d’emblée que si les XSLT Stylesheets offrent un ensemble de traitements génériques pour la TEI, elles ne traitent pas tous les cas de figure ou tous les éléments ou valeurs d’attribut de la TEI.

Elles ne prétendent pas non plus constituer un modèle de traitement ou de rendu standard pour la TEI. En revanche, elles offrent une très riche bibliothèque de transformations qui devrait dans bien des cas vous faciliter le travail.

Les transformations pour la P5 sont seulement développées en XSLT&nbsp;2.0, leur utilisation nécessite donc un processeur adapté.

---

### 3. Tirer parti de l’outillage TEI
## Sebastian Patrick Quintus Rahtz (13 February 1955 – 15 March 2016)

???

La TEI est une communauté, elle est largement redevable des personnes qui ont contribué à son fonctionnement. Sebastian Rahtz a été l’initiateur des XSL Stylesheets dont il a longtemps assuré la maintenance. Pour beaucoup d’entre nous, il était un modèle d’engagement, de désintéressement et de rigueur dans le travail. Sa contribution à la TEI fut considérable, et son décès est une grande perte pour la communauté.

---

### 3. Tirer parti de l’outillage TEI
## Distribution des XSL Stylesheets

* Sources&nbsp;: [https://github.com/TEIC/Stylesheets](https://github.com/TEIC/Stylesheets)
* Documentation&nbsp;: [http://www.tei-c.org/release/doc/tei-xsl/](http://www.tei-c.org/release/doc/tei-xsl/)
* Téléchargeables sous forme de packet Debian/Ubuntu&nbsp;: [http://tei.oucs.ox.ac.uk/teideb/](http://tei.oucs.ox.ac.uk/teideb/)
* Au cœur du convertisseur OxGarage&nbsp;: [http://www.tei-c.org/oxgarage/](http://www.tei-c.org/oxgarage/)
* Distribuées comme framework d’oXygen&nbsp;: Pré-installé dans la distribution d’oXygen

???

À l’instar du code source de la TEI, les XSL Stylesheets sont distribuées par l’intermédiaire de la page GitHub du Consortium.

La bibliothèque peut donc être installée localement pour être exécutée en ligne de commandes avec un processeur compatible avec XSLT&nbsp;2.0 (le répertoire `bin/` contient plusieurs fichiers exécutables).

Elle est également distribuée sous forme de packet Debian/Ubuntu pour les utilisateurs Linux. Ce sont elles qui sont aussi au cœur des transformations du convertisseur OxGarage.

Enfin, les stylesheets sont également distribuées parmi les Framework offerts par oXygen et peuvent être exécutées directement depuis l’éditeur oXygen Editor.

---

### 3. Tirer parti de l’outillage TEI
## Plusieurs manières de personnaliser les XSL Stylesheets

* en spécifiant des **valeurs de paramètres** avec oXygen
* en fournissant ces paramètres **en ligne de commande**
* en construisant des **feuilles de styles embarquant celles de la librairie** en les surchargeant.
