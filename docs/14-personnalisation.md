## HNU3052/HNU6052 Humanités numériques : introduction à la TEI

# Personnalisation de la TEI

---

## Introduction

???

Comme on l’a vu précédemment, la TEI peut donc se concevoir comme un cadre de travail technique, un framework, qui accompagne l’éditeur ou l’encodeur dans la structuration de l’information.

Elle consiste en un ensemble de préconisations qui doivent être adaptées aux spécificités inhérentes à chaque projet éditorial.

* Comme le relève Florence Clavaud, « cette modularité qui garantit la flexibilité du modèle et sa généralité, peut parfois dérouter l’encodeur inexpérimenté ou le confronter à des choix difficiles. » La définition des solutions d’encodage implique d’opérer des choix entre plusieurs solutions admissibles en en saisissant bien tous les tenants et les aboutissants.
* Elle implique un aller-retour continuel entre les sources textuelles à traiter et la documentation de la TEI afin de réévaluer les solutions d’encodage envisagées.

Ce besoin de personnalisation s’explique, d’une part parce que le texte est souvent un objet hétérogène, et d’autre part car l’encodeur ou l’éditeur peut avoir des objectifs différents.

* Dans le cas d’un texte dramatique, il pourra se révéler nécessaire de trouver un moyen pour marquer les locuteurs.
* Les éléments nécessaires pour traiter le discours oral ne seront sans doute pas les mêmes que ceux requis pour le traitement diplomatique.
* On n’abordera pas un ensemble de textes composites ou un corpus de la même manière que des textes isolés.

Ces différents cas de figure expliquent assez bien le besoin de métadonnées spécialisées pour décrire les contenus.


---

## 1. Un système modulaire

---

### 1. Un système modulaire
## Distinguer

#### Le modèle abstrait de données (TEI Abstract model)

* qui définit un ensemble de concepts et de relations entre ces concepts
* qui permet d’exprimer des définitions formelles (modèles de contenus)

#### Implémentations techniques du modèle (TEI schema)

* qui définissent l’ensemble des règles et contraintes syntaxiques sous forme de schémas XML ou de DTD

???

Ce que propose la TEI c’est un ensemble de mécanismes pour traiter les différents cas de figures qu’un éditeur peut rencontrer et que nous venons d’évoquer.

Formellement parlant, les **Guidelines** fournissent à la fois des règles syntactiques sur la manière dont des éléments et des attributs doivent être utilisés dans des documents valides, mais aussi des recommandations sémantiques sur l’interprétation que l’on doit attacher à certaines constructions syntactiques.

En ce sens, elle fournissent à la fois une définition de type de document, et une déclaration de type de document.

Pour bien comprendre ce que propose la TEI, il convient de distinguer le modèle abstrait de données, des implémentations techniques du modèle.

Plus exactement, on peut distinguer

- **le modèle abstrait de la TEI (TEI Abstract Model)**
  - qui définit un ensemble de concepts et de relations entre ces concepts
  - qui permet d’exprimer des définitions formelles (modèles de contenus)
- **Implémentations techniques du modèle ou le schéma TEI (TEI schema)**
  - qui définissent l’ensemble des règles et contraintes syntaxiques sous forme de schémas XML ou de DTD

cf. Sperberg-McQueen, C. Michael, Burnard, Lou, et Bauman, Syd, [TEI P5 : Guidelines for Electronic Text Encoding and Interchange](http://www.tei-c.org/Guidelines/P5/), 23.3.

**Ces deux composantes forment ensemble les Guidelines.**

Ces Guidelines expriment sous forment littérale (voir [Donald Knuth](http://www.literateprogramming.com)) le modèle abstrait de données, et propose des implémentations techniques du modèle.

### Indépendance par rapport à XML

Si la conception de la TEI découle en grande partie des technologies XML, et que son infrastructure repose principalement sur ces technologies, la TEI pourrait tout aussi bien être exprimée par l’intermédiaire d’un autre véhicule si un nouveau formalisme technique devait s’imposer à l’avenir.

Historiquement le développement de la TEI paraît très lié aux technologies XML. Initialement développée en SGML, le travail conduit dans la TEI a notamment été à l’origine de certains aspects de la normalisation XML. La TEI a immédiatement adopté XML lors de sa spécification par le W3C.

Pourtant, la TEI définit un modèle qui s’abstrait de XML. Elle décrit par exemple des mécanismes pour prendre en charge des structures non hiérarchiques (stand-off markup), et dispose [on le verra plus tard] de son propre langage de spécification qui s’autonomise de plus en plus des langages de schémas XML avec ODD.

cf. Elena Pierazzo à la conférence [TEI2015](http://tei2015.huma-num.fr/en/papers/#140), proposant un travail de modélisation formelle pour s’abstraire encore plus du modèle XML. De fait, les classes définies dans TEI recouvrent souvent plus des facilités de construction d’éléments XML que le modèle abstrait de la TEI.

@todo voir si pas confondu aujourd’hui avec ODD

---

### 1. Un système modulaire
## Un cadre de travail flexible et modulaire

* [22 modules](http://www.tei-c.org/release/doc/tei-p5-doc/en/html/ST.html#STMA)
* Classement des éléments de la TEI par domaines d’application

Chaque module fait l’objet d’un chapitre de la documentation

* [Classes de modèle](http://www.tei-c.org/release/doc/tei-p5-doc/en/html/REF-CLASSES-MODEL.html)
* [Classes d’attribut](http://www.tei-c.org/release/doc/tei-p5-doc/en/html/REF-CLASSES-ATTS.html)
* [Macros et types de données](http://www.tei-c.org/release/doc/tei-p5-doc/en/html/REF-MACROS.html)

???

Dès l’origine, la TEI a été conçue pour être employée comme un ensemble de briques permettant de construire des schémas spécifiques pour un projet donné.

L’infrastructure de la Proposition numéro 5 de la TEI (P5) consiste en&nbsp;:

* vingt-deux modules parmi lesquels sont répartis les nombreux éléments de la TEI qui font l’objet d’une importante documentation textuelle
* ils sont formellement classés dans des classes de modèle et d’attributs auxquels on peut faire appel pour spécifier un schéma.

---

### 1. Un système modulaire
## Les 22 [modules](http://www.tei-c.org/release/doc/tei-p5-doc/en/html/ST.html#STMA) de la TEI

![](images/modulesTEI.png)

---

### 1. Un système modulaire
## Les 22 [modules](http://www.tei-c.org/release/doc/tei-p5-doc/en/html/ST.html#STMA) de la TEI

Regroupés par domaine d’application, à chaque module correspond un chapitre des [Guidelines](http://www.tei-c.org/Guidelines/)

Trois modules habituellement requis&nbsp;:

* [`core`](http://www.tei-c.org/release/doc/tei-p5-doc/en/html/CO.html) éléments disponibles dans tous les documents TEI
* [`header`](http://www.tei-c.org/release/doc/tei-p5-doc/en/html/HD.html) en-tête TEI
* [`textstructure`](http://www.tei-c.org/release/doc/tei-p5-doc/en/html/DS.html) structure de text par défaut


&amp; [`tei`](http://www.tei-c.org/release/doc/tei-p5-doc/en/html/ST.html) infrastructure TEI

ex d’autres modules spécialisés&nbsp;: [`namesdates`](http://www.tei-c.org/release/doc/tei-p5-doc/en/html/ND.html) pour les noms et dates, [`transcr`](http://www.tei-c.org/release/doc/tei-p5-doc/en/html/PH.html) pour la critique textuelle, [`msdescription`](http://www.tei-c.org/release/doc/tei-p5-doc/en/html/MS.html) pour la description de manuscrits, [`figure`](http://www.tei-c.org/release/doc/tei-p5-doc/en/html/FT.html) facsimili, ...

???

Les modules constituent avant tout un moyen commode de grouper par domaine d’application les nombreux éléments de la TEI (ils sont actuellement au nombre de 555).

Chaque module fait l’objet d’une description littérale dans un chapitre des Guidelines.

Trois de ces modules sont habituellement requis lors de la production d’un schéma (`core`, `header`, et `textstructure`, on utilise également `tei` pour RelaxNG).

Outre ces trois modules, on fait fréquemment appel aux modules suivants `figures`, `namesdates`, `linking`, `transcr`.

* Le module [`namesdates`](http://www.tei-c.org/release/doc/tei-p5-doc/en/html/ND.html) est particulièrement adapté pour la description des entités historiques de type personnes et lieux.
* Le module [`figure`](http://www.tei-c.org/release/doc/tei-p5-doc/en/html/FT.html) est utilisé conjointement avec `transcr` pour traiter la description des facsimili.
* [`transcr`](http://www.tei-c.org/release/doc/tei-p5-doc/en/html/PH.html) est destiné à la transcription de manuscrit et à la transcription de sources primaires. Y trouvera par exemple des éléments pour signaler un passage rayé, un ajout dans la marge (glose marginale), une abréviation, etc.
* [`msdescription`](http://www.tei-c.org/release/doc/tei-p5-doc/en/html/MS.html) sert à la description de manuscrits. Quand fait une édition de texte, besoin de décrire la source que l’on édite, on y trouver les éléments nécessaires.
* Il est également possible d’utiliser le module `dictionaries` pour le traitement d’un glossaire.
* Module `drama` pour la transcription du texte oral pas la même chose que texte de base. Composante de temps.
* `textCrit` lorsque l’on a besoin d’encoder un apparat critique, quand étudie un texte qui a plusieurs témoins, plusieurs manuscrits qui constitue plusieurs leçons d’un texte `transcrit` (variantes) critical aparatus
* `linking` qui concerne le modèle de lien

---

### 1. Un système modulaire
## Se repérer sur le site du Consortium

[http://www.tei-c.org](http://www.tei-c.org)

#### Consortium

* Actualités
* Groupes de travail
* Wiki

#### Guidelines

* [Consultation des chapitres](https://www.tei-c.org/release/doc/tei-p5-doc/en/html/)
* [Navigation par élément](https://www.tei-c.org/release/doc/tei-p5-doc/en/html/REF-ELEMENTS.html)
* [Navigation par attributs](https://www.tei-c.org/release/doc/tei-p5-doc/en/html/REF-ATTS.html)
* [Consultation des classes](https://www.tei-c.org/release/doc/tei-p5-doc/en/html/REF-CLASSES-MODEL.html)

#### Outils

???

Un site web très touffu dans lequel on peut parfois se perdre. On peut accéder à la liste des membres. Vous avez également un lien vers l’[Journal of the TEI](https://jtei.revues.org) dans le menu activités.

Vous disposez également d’un WIKI sur la TEI qui est un regroupement de tutoriaux, projets de la TEI. Une liste des projets utilisant la TEI. Il n’est pas obligatoire de déclarer que l’on travaille avec TEI. C’est une démarche libre, puisqu’il s’agit d’un logiciel libre avec lequel on fait ce que l’on veut.

Une partie du WIKI est consacrée aux outils. Si vous deviez démarrer un gros projet, c’est une bonne page pour déterminer les outils existants pour faire l’état de l’art. Mais, si elle constitue un passage obligé, cette page n’est évidemment pas exhaustif.

Les Guidelines, mais aussi About avec une rubrique sur l’histoire du projet.

La liste de discussion&nbsp;: il vous suffit de fournir votre nom et votre adresse courriel pour être abonné.

Les parties concernant les spécifications formelles des Guidelines ont fait l’objet de traduction par le groupe Afnor. Des exemples correspondants à la pratique française ont été introduits.

En revanche le corps principal des Guidelines n’existe qu’en une seule langue. Si vous commencez un projet, rien ne vaudra une lecture attentive des chapitres qui vous intéressent. Il s’agit d’une recommandation de base. Ici c’est même un préalable, car si EAD par exemple est souple et facile à comprendre et cerner, TEI l’est beaucoup moins. Pour commencer à travailler avec TEI, la première consigne est de commencer à lire la documentation.

---

### 1. Un système modulaire
## Guidelines

**[https://www.tei-c.org/release/doc/tei-p5-doc/en/html](https://www.tei-c.org/release/doc/tei-p5-doc/en/html)**

* 23 chapitres par ordre d’intérêt
* 5 premiers chapitres généralistes
* 7 suivants discutent de type de textes en particulier
* 9 chapitres spécialisés
* 2 derniers chapitres sur la conformance

???

Le corps de l’édition actuelle des Guidelines contient vingt-trois chapitres arrangés dans un ordre croissant d’intérêt spécial. Les cinq premiers chapitres abordent en détail les questions importantes pour les personnes envisageant d’employer la TEI pour n’importe quel type de texte. Les sept chapitres suivants focalisent sur des genres de textes particuliers&nbsp;: versifiés, dramatiques, textes oraux, dictionnaires, et manuscrits. Les neuf derniers chapitres s’occupent de sujets variés concernant plutôt des applications spécialisées. Enfin, les deux derniers chapitres s’occupent de l’utilisation de ODD qui sert à déclarer son utilisation de la TEI, et les questions de conformance et d’interopérabilité.

Bien évidemment, ces Guidelines ne sont pas faites pour être lues de bout en bout (même si vous pouvez le faire&nbsp;!). Il s’agit plutôt d’une documentation de référence.

Généralement, les chapitres suivent tous une organisation similaire. Ils débutent par des considérations générales sur le sujet traité. Repérer les navigations hypertextuelles (renvois), les tables de descriptions d’éléments et d’attributs, les exemples, et à la fin des chapitres le récapitulatif des éléments contenus dans les modules décrits par les chapitres.

---

### 1. Un système modulaire
## Conventions de nommage

#### Identifiants génériques

Les noms d’éléments sont les identifiants génériques

ex&nbsp;: `<name>` correspond à `name`

#### Référence aux attributs

prennent la forme `@attname`, où "attname" est le nom de l’attribut

ex&nbsp;: `@name` correspond à `name`

Les noms TEI ressemblent à des mots anglais ... mais on peut les modifier

Par convention, on se sert du « camelCase »

---

### 1. Un système modulaire
## Conventions de nommage

### Références aux classes

de la forme `model.divLike` pour les classes de modèle

de la forme `att.global` pour les classes d’attribut.

### Macros et types de données

de la forme `macro.paraContent` pour les macros

de la forme `teidata.pointer` pour les types de données.

suffixes `Part`, `Like`

racine `global` pour indiquer que les membres de la classe sont permis n’importe où dans un document TEI

suffixes additionnels préfixés par `.`

ex&nbsp;: `model.divPart`, `model.divPart.spoken`

???

Introduire la notion d’héritage à partir des conventions de nommage des classes&nbsp;:

Le premier suffixe "Part" si les membres de la classe sont tous fils de l’élément racine, ou "Like" les membres de la classe sont tous enfant de l’élément racine.

La racine de nom "global" est utilisée pour indiquer que les membres de la classe sont permis partout dans un document TEI

Il est possible d’ajouter des suffixes additionnels, préfixés par un "." pour distinguer des sous-classes sémantiques ou structurelles.

Par exemple la classe des éléments qui font partie de div est appelée `model.divPart`. Cette classe inclue dans une sous-classe les éléments qui peuvent faire partie d’une division dans un texte oral, qui est alors nommée `model.divPart.spoken`

---

### 1. Un système modulaire
## Déclaration du contenu d’un élément

* `<sequence>` Indique une séquence
* `<alternate>` Indique un choix
* `@minOccurs` Indique le nombre minimal de répétitions (par défaut 1)
* `@maxOccurs`Indique le nombre maximal de répétitions (par défaut 1)
* `<elementRef>` Indique la présence d’un élément
* `<classRef>` Indique la présence d’un ou de plusieurs éléments d’une classe spécifique

???

* `<sequence>` Indique une séquence, c’est-à-dire que les composants sont présentés dans l'ordre où il faut les trouver.
* `<alternate>`Indique un choix, c’est-à-dire que l’on choisit entre tous les composants.
* `@minOccurs` et `@maxOccurs` sont d’habitude utilisés ensemble pour indiquer la cardinalité d’un composant. Si absent, ils ont tout les deux une valeur de 1.
* `<elementRef>` Indique un élément par son attribut `@key`
* `<classRef>` Indique une classe d'éléments par son attribut `@key`. La signification varie selon la valeur de son attribut `@expand`. Par défaut, il correspond à un élément (n’importe lequel) de la classe indiquée.

---

## 2. Les Cinq Étapes du chemin de l’Éveil TEI

(Lou Burnard)

1. Modélisation&nbsp;: quels sont les buts et les objets de votre projet&nbsp;?
2. Orientation&nbsp;: est-ce que vos objets sont déjà reconnus par la TEI&nbsp;?
3. Déclaration&nbsp;: comment créer une spécification TEI-conforme&nbsp;?
4. Documentation&nbsp;: comment documenter vos pratiques TEI&nbsp;?
5. Validation&nbsp;: comment valider vos efforts&nbsp;?

???

La modélisation de vos données est une préalable essentiel. Que vous vous servez de UML, de RDBMS, de SKOS, ou quoique ça soit d'autre, si vous n'avez pas un modèle explicite des choses que vous espérez gérer, vous aurez de grands difficultés.

---

![](images/ceci-nest-pas-une-pipe.jpg)

---

## Analyse des données classique

On identifie...

* les "objets d’intérêt"
* leurs attributs et propriétés
* les relations entre objets
* les procédures/traitements essentiels envisagés

Ce travail est essentiel pour n’importe quel projet d’informatisation.

---

## Comment s’orienter&nbsp;?

Les **TEI Guidelines** se divisent en deux grandes parties&nbsp;:

* une séquence de 23 chapitres, dont la plupart correspondent à un module
* des listes alphabétiques de définitions exhaustives de classes (183), d’éléments (546), d’attributs (470), de macros (8), et de types de données (28) .

Comment savoir quels éléments, attributs, etc. choisir pour telle ou telle entité identifiée lors de l’analyse préalable du document ?

_Comment savoir que vous avez besoin d’une licorne ?_

---

## La triste vérité...

* Désolé, mais il n’y a aucune méthode scientifique&nbsp;; aucun raccourci pour cela...
* Il faut étudier les exemplaires et les définitions pour savoir si tel élément TEI, si prometteur, s’applique bel et bien à votre cas de figure

Pour chacun(e) des entités/concepts identifiés dans votre modèle, il faut décider&nbsp;:

* quel objet TEI lui correspond parfaitement&nbsp;? (s’il existe)
* quel objet TEI lui ressemble et quelles petites modifications seraient nécessaires pour qu'il lui corresponde ?
* quelle lacune TEI votre analyse vous permettra de corriger (elles existent bel et bien, les licornes !)

---

### TEI est un système modulaire.

- On s’en sert pour créer un système d'encodage selon ses propres besoins, en sélectionnant des modules spécifiés par la TEI
- Chaque module définit un groupe d’éléments (et leurs attributs)
- on peut sélectionner les éléments voulus, et même en modifier certaines propriétés
- on peut y ajouter des éléments nouveaux ou issus d’autres standards

???

Personnalisable et extensible. Ce qui impose de pouvoir définir ses objets avant de se servir la TEI !

---

## 3. Les besoins

**Un schéma formel** (exprimé dans un langage informatique tel qu’une DTD, un schema RELAXNG, W3C Schema, ou Schematron) qui permet de contrôler :

- les balises disponibles ?
- dans quels contextes ?
- avec quels attributs ?
- avec quelles valeurs ?
- en respectant quelles contraintes ?

**Une documentation** pour expliquer nos principes éditoriaux, nos principes de choix de balises, etc. aux utilisateurs/ développeurs :

- en plusieurs langues naturelles
- en plusieurs formats bureautiques (PDF, Word, HTML, epub...
- des outils informatiques pour transformer et gérer nos données XML

---

## 4. Ce que propose la TEI

* ODD : Un vocabulaire XML pour définir les vocabulaires XML
* TEI XSL Stylesheets : Un ensemble de feuilles transformations XSLT génériques pour la conversion des documents XML-TEI
  * Roma : Un logiciel pour traiter des documents exprimés dans ce vocabulaire, pour en faire ressortir des schémas RELAXNG, DTD, etc.
  * OxGarage : Une application web pour réaliser des transformations de documents (docx vers TEI et l’inverse, TEI vers HTML,  etc.)
* Une documentation technique et un manuel (en HTML, au format PDF, etc.)

???

Ayant eu les mêmes besoins, la TEI met à disposition l’ensemble de son infrastructure technique qui peut ainsi être utilisée sur n’importe quel projet.

---

## À quoi ça sert, un ODD&nbsp;?

Nous avons besoin de deux choses complémentaires…

Un **schéma formel** (utilisant un langage informatique tel que DTD, RELAX NG, W3C Schema, Schematron) pour contrôler l’édition

* déterminer quelles sont les balises disponibles&nbsp;?
* dans quels contextes&nbsp;?
* avec quels attributs&nbsp;?
* avec quelles valeurs&nbsp;?
* en respectant quelles contraintes&nbsp;?


Une **documentation** pour expliciter aux utilisateurs/développeurs nos principes éditoriaux, nos principes de choix de balises, etc.&nbsp;:

* dans plusieurs langues naturelles&nbsp;;
* dans plusieurs formats de fichier (PDF, MsWord, HTML, epub,...).

---

## OK, mais pourquoi ODD&nbsp;?

Ces attentes pourraient être satisfaites de plusieurs manières.

Les avantages d’ODD&nbsp;:

* un format XML bien établi,
* faisant partie intégrante du système TEI,
* permettant un traitement fortement intégré avec d’autres systèmes TEI,
* pérennisation à long terme
* standardisation

---

## Niveaux de validation

Un document TEI-XML doit

- respecter les règles syntaxiques de XML
- être valide par rapport à un schéma
- respecter la sémantique définie de chaque élément TEI utilisé
- être documenté par un schéma qui exprime de manière formelle l’utilisation de la tei
- pouvoir être validé par un logiciel

C’est précisément à quoi est destiné la production d’un fichier ODD.

---

## Qu’est-ce qu’être conforme à la TEI ?

#### **être honnête** : Les éléments XML qui se déclarent comme appartenant au namespace TEI doivent respecter les définitions TEI de ces éléments

#### **être explicite** : Pour valider un document TEI, un fichier ODD est fortement conseillé car il documente les modifications effectuées

#### Tout document valide TEI est valide par rapport au schéma TEI-all

L’objet de ces règles est de faciliter le « blind interchange » des documents.
