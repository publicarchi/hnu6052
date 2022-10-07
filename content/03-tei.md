## HNU3052/HNU6052 Humanités numériques : introduction à la TEI

# La Text Encoding Initiative
**La Text Encoding Initiative comme cadre de travail pour l’édition des textes.**

1. Historique de la TEI
2. Objectifs et principes
3. Mise en œuvre

---

## Préambule
**Un effort international pour unifier les pratiques d’encodage de textes dans le domaine académique**

* Un ensemble de recommandations ([Guidelines](http://www.tei-c.org/Guidelines/))
* Un cadre de travail et un vocabulaire XML pour produire des modèles de textes
* Une communauté d’utilisateurs

???

La Text Encoding Initiative (TEI) constitue un effort international pour **unifier les pratiques d’encodage de textes** dans le domaine académique.

Elle fournit **un vocabulaire XML** qui permet de produire des modèles de textes que l’on peut utiliser à différentes fins notamment pour l’édition de sources primaires.

Plus qu’un schéma générique, elle offre en fait **un cadre de travail** qui permet de traiter différents cas de figure.

Ce cadre de travail se compose :

* d’un vocabulaire XML qui permet de produire des modèles de textes,
* d’une documentation qui en fournit la sémantique en langage naturel,
* et d’un ensemble de recommandations rassemblées sous l’intitulé de [Guidelines](http://www.tei-c.org/Guidelines/).

En ce sens, ainsi que le remarquait Florence Clavaud dans son cours à l’École nationale des chartes, il s’agit plutôt d’une sorte d’« ontologie générique du texte ».

Une communauté d’utilisateurs : organisation communautaire. Projet conçu sur le modèle du logiciel libre.

---

## 1. Historique de la TEI


---

### 1. Historique de la TEI
## 1.1. Un projet collectif

* [Association for Computers in the Humanities](http://ach.org)
* [Association for Literary and Linguistic Computing](http://eadh.org)
* [Association for Computational Linguistics](http://www.aclweb.org)

Recherche d’un modèle commun pour encoder &amp; partager des textes

---

### 1. Historique de la TEI
## 1.2. Chronologie

* **novembre 1987**&nbsp;–&nbsp;Première réunion au Vassar College à Poughkeepsie
* Création de la Text Encoding Initiative
* **juin 1990**&nbsp;– Premier brouillon (P1)
* **mai 1994** – Première publication des Guidelines (P3)

???

# Un projet collectif

La Text Encoding Initiative est née d’un constat partagé, au sein d’une communauté de chercheurs déjà engagés dans la production de textes numériques, du manque de solutions pour faciliter l’échange de textes et d’information sur leur travail.

* [Association for Computers in the Humanities](http://ach.org)

* [Association for Literary and Linguistic Computing](http://eadh.org)

* [Association for Computational Linguistics](http://www.aclweb.org)

Recherche d’un modèle commun pour encoder &amp; partager des textes

# **novembre 1987**&nbsp;–&nbsp;Première réunion au Vassar College à Poughkeepsie

En novembre 1987, une première rencontre fut organisée sous l’égide de l’Association for Computers and the Humanities (ACH) au Vassar College à Poughkeepsie avec une trentaine de représentants issus du monde des archives, des centres d’informatique appliquée aux sciences humaines, ou d’organisations professionnelles pour examiner à nouveau la question de la standardisation.

S’accordant tous sur le besoin de pratiques communes, ces participants formulèrent une dizaine de principes directeurs.

- cf. Ide, Nancy M., et Sperberg-McQueen, C. Michael, [« The Text Encoding Initiative: Its History, Goals, and Future Development »](http://www.cs.vassar.edu/~ide/papers/teiHistory.pdf), dans Computers and the Humanities, editor. Nancy M. Ide et Jean Véronis vol. 29, 1995, p. 5-15.

Ceux-ci mettaient notamment l’accent sur la conversion de formats et la nécessité de développer un métalangage pour des schémas d’encodage descriptifs.

# Création de la Text Encoding Initiative

L’ACH, rapidement suivie dans son effort de standardisation par l’Association for Literary and Linguistic Computing et l’Association for Computational Linguistics formèrent ensemble la Text Encoding Initiative (TEI) afin de conduire le projet sous une forme internationale et multilingue et **développer des recommandations pour la préparation et l’échange de textes électroniques dans le domaine universitaire**.

Plus de 50 chercheurs contribuent déjà à la TEI P1 (juin 1990)

15 groupes de travail collaborent de 1990-93 à la P2

- **juin 1990**&nbsp;– Premier brouillon (P1)

- **mai 1994** – Première publication des Guidelines (P3)

Dès 1994, la TEI publiait une **première version officielle de ses Guidelines for the Encoding and Interchange of Machine-Readable Texts**.

Ce rapport proposait un ensemble de conventions pour l’encodage de différents types de textes pour servir dans le domaine des sciences du langage ou des sciences humaines. Cette première publication constitue un jalon important car jamais auparavant les chercheurs n’avaient été capables de formuler un consensus sur les pratiques d’encodage.


---

### 1. Historique de la TEI
## 1.3. Développements du projet

* Création de groupes de travail disciplinaires
* Diffusion du modèle
* **janvier 1999** Création d’un [consortium international](http://www.tei-c.org/index.xml)
* **juin 2002** Mise à jour pour prendre en compte XML (P4)
* **novembre 2007** Version actuelle des [Guidelines (P5)](http://www.tei-c.org/Guidelines/P5/)
* **depuis le 29 janvier 2019** – [P5: Guidelines for Electronic Text Encoding and Interchange, Version 3.5.0, revision 3c0c64ec4](https://www.tei-c.org/release/doc/tei-p5-doc/en/html/index.html)


???

# Développements du projet

Création de groupes de travail par champs disciplinaires. La première version officielle des Guidelines P3, était le travail de 200 personnes.

Diffusion du modèle par l’intermédiaire de séminaires, d’ateliers, qui permettent le recueil des remarques des utilisateurs.

Création d’un consortium international en janvier 1999.

Mise à jour de la P3 pour prendre en compte XML (P4, publiée en juin 2002).

Immédiatement après la publication de cette version 4, début du travail sur la P5, version actuelle du projet publiée en novembre 2007.

P5 qui incluait nombreuses améliorations concernant l’encodage de caractères, le traitement des parties graphiques, la description des manuscrits, le balisage externe, et la structuration des Guidelines proprement dit. C’est dans cette version qu’apparaît notamment une première version du langage ODD pour modéliser des documents.

---

### 1. Historique de la TEI
## 1.4. Un projet ancien

* D’abord développé en SGML
* Largement employé
* Souvent la solution la plus adaptée pour les corpus textuels ou les sources primaires

???

Comme vous le constatez, la TEI est un projet d’une dizaine d’années plus ancien que le méta-langage XML. Elle fut dans un premier temps développée en SGML, un méta-langage dont XML est une simplification.

La TEI a adopté XML dès la première publication de sa spécification en 1996, certains membres de la TEI avaient en effet participé à son développement.

Par la suite, les Guidelines ont été étayées par l’apport de nombreuses spécialités pour prendre en charge une plus grande diversité de textes.

Malgré l’ancienneté du projet, elle reste l’un des dialectes XML les plus largement employé. On dispose donc de beaucoup de recul sur son utilisation. Dans bien des cas, c’est la solution la plus adéquate pour traiter certaines choses comme le texte ou la production de sources primaires.

---

### 1. Historique de la TEI
## 1.5. Impact de la TEI

* Une large reconnaissance internationale
* Conservation à long terme du patrimoine culturel
* Éviter la bibliothèque de Babel numérique
* Projet phare des Humanités numériques
* [Prix Antonio Zampolli](http://adho.org/awards/antonio-zampolli-prize) à DH2017

???

# Impact de la TEI

Reconnu internationalement comme un outil d’importance cruciale à la fois pour la conservation à long terme de données électroniques et comme moyen efficace d’utiliser ces données dans de nombreux domaines.

Son schéma d’encodage est particulièrement adopté pour la production d’éditions critiques de textes littéraires ou de sources primaires, de larges corpus linguistiques, ou encore la production de métadonnées détaillées relatives à des collections de textes patrimoniaux de toutes sortes.

- cf. liste (non exhaustive) des projets répertoriés http://www.tei-c.org/Activities/Projects/

Adoptée par de nombreuses organisations telles que le National Endowment for the Humanities aux États-Unis, l’Arts and Humanities Research Board au Royaume-Uni, la Modern Language Association, l’Expert Advisory Group for Language Engineering Standards de l’Union européenne, le Canadian Research Writing Collaboratory de Susan Brown et de nombreuses autres organismes à travers le monde qui financent ou promeuvent la production de textes électroniques.

* Succès qui permet d’assurer conservation à long terme de notre patrimoine culturel porté dans un monde en réseau.

* Une solution pour éviter la bibliothèque de Babel numérique

* À tous les égards l’un des projet phares les plus durables dans le domaine des Humanités numériques (Digital Humanities).

* Récompensé par le [Prix Antonio Zampolli](http://adho.org/awards/antonio-zampolli-prize) à DH2017 (Montréal)

---

## 2. Objectifs et principes

---

### 2. Objectifs et principes
## 2.1. Faciliter l’échange et l’intégration des travaux des chercheurs

* Concevoir et maintenir **un modèle international générique**,
  * applicable à tous les textes,
  * écrits dans toutes les langues,
  * datant de toutes les périodiques
* Guider les utilisateurs non techniciens (**documenter le modèle**)
* Aider les spécialistes et les techniciens en proposant **un modèle souple et adaptable**

???

# Principes directeurs

Faciliter l’échange et l’intégration des travaux des chercheurs

* Concevoir et maintenir **un modèle international générique **, applicable à tous les textes, écrits dans toutes les langues, datant de toutes les périodes

* Guider les utilisateurs non techniciens (**documenter le modèle**)

* Aider les spécialistes et les techniciens en leur proposant un modèle **souple et adaptable**

---

### 2. Objectifs et principes
## Mise en œuvre de ces principes
Publication de recommandations :

* simples
* faciles à employer
* compréhensibles

Et :

- Généricité
- Modularité et possibilités de personnalisation ou d’extension
- Utilisation des syntaxes et mécanismes XML

???

**Rapidement **la TEI a privilégié la publication de recommandations** plutôt que celle d’un standard ou d’une norme.**

L’objectif était de spécifier des conventions d’encodage simples, faciles à employer, relativement compréhensibles, et qui fournissent d’amples mécanismes d’extension afin de pouvoir répondre à des besoins particuliers.

cf. Ide, Nancy M., et al., **op. cit.**

Cette **modularité avec ses possibilités de personnalisation et d’extension** seyait mieux à la recherche.

Néanmoins, la TEI s’est rapidement imposée comme standard de fait pour l’encodage de textes numériques dans le domaine des sciences humaines. Plusieurs raisons expliquent en grande partie cette situation.

* D’une part, l’importante généricité de la TEI lui permet de couvrir une grande gamme de besoins. Cela explique en grande partie l’importante pénétration de la TEI dans la communauté scientifique.

* D’autre part, la TEI repose sur l’utilisation de syntaxes et de mécanismes XML standardisés par le W3C (World Wide Web Consortium) qui présentent de nombreuses garanties en termes d’interopérabilité et permettent d’utiliser les outils puissants disponibles pour manipuler des arbres XML.

Aujourd’hui la TEI cherche à s’abstraire du modèle XML avec la définition d’un langage TEI permettant de spécifier ses propres schémas.

---

### 2. Objectifs et principes
## 2.2. Organisation du Consortium

Le [TEI Council](http://www.tei-c.org/Activities/Council/) : Formé de 12 personne, chargé de l’élaboration et évolution des *Guidelines*.

Le [TEI Board of Directors](http://www.tei-c.org/Board/) : chargé de la gestion du Consortium (orientations stratégiques, gestion financière, recrutement, etc.).

Une large communauté d’utilisateurs :

* [Workgroups](http://www.tei-c.org/Activities/Workgroups/)
* [SIG Special Interest Groups](http://www.tei-c.org/Activities/SIG/)
* [Liste de diffusion tei-l](https://listserv.brown.edu/tei-l.html)
* [liste de diffusion francophone tei-fr](https://groupes.renater.fr/wiki/tei-fr/)

???

La TEI est organisée autour d’un Consortium international et d’une importante communauté d’utilisateurs.

Le Consortium TEI rassemble de nombreuses organisations internationales. Il est actuellement structuré par deux instances.

# Le TEI Council

* Formé de 12 personne

* Chargé de l’élaboration et de l’évolution des *Guidelines*,

# Le TEI Board of Directors

* chargé de la gestion du Consortium (orientations stratégiques, gestion financière, recrutement, etc.)

# Une large communauté d’utilisateurs

Celle-ci est fondamentale.

Nombreux groupes de travail
* [Workgroups](http://www.tei-c.org/Activities/Workgroups/)

* [SIG Special Interest Groups](http://www.tei-c.org/Activities/SIG/)

Plusieurs listes de diffusion&nbsp;:

* [https://listserv.brown.edu/tei-l.html](https://listserv.brown.edu/tei-l.html)

* [https://groupes.renater.fr/wiki/tei-fr/](https://groupes.renater.fr/wiki/tei-fr/)

---

### 2. Objectifs et principes
## 2.3. Un projet Open source

- Le code source de la TEI est distribué de manière libre et open source par l’intermédiaire d’un entrepôt GitHub auquel vous pouvez contribuer.
- Un projet collaboratif : discussion des problèmes rencontrés, suggestions de modifications sur les listes et le gestionnaire de bugs

Entrepôt GitHub :

* Le consortium TEI sur GitHub&nbsp;: [https://github.com/TEIC](https://github.com/TEIC)
* Entrepôt des Guidelines&nbsp;: [https://github.com/TEIC/TEI](https://github.com/TEIC/TEI)
* Gestionnaires d’issues des Guidelines&nbsp;: [https://github.com/TEIC/TEI/issues](https://github.com/TEIC/TEI/issues)

???

En plus d’être une communauté, comme vous le savez déjà, la TEI propose également une infrastructure pour l’encodage de textes. L’ensemble du code informatique du projet est mis à disposition par l’intermédiaire d’un gestionnaire de version.

Un projet « open source »

- Les Guidelines et l’ensemble du code sont maintenues sur GitHub (anciennement Sourceforge)
- Un projet collaboratif appuyé sur un entrepôt GitHub

---

## 3. Mise en œuvre

---

### 3. Mise en œuvre
## 3.1. Pourquoi utiliser la **T**ext **E**ncoding **I**nitiative&nbsp;?

* adaptation aux objectifs scientifiques
* interopérabilité
* pérennisation

Large adoption (standard de fait)

[Référentiel Général d’Interopérabilité](http://references.modernisation.gouv.fr/interoperabilite)

**C’est un projet brillant !**

???

# Pourquoi la TEI&nbsp;?

La production d’une édition électronique exige la mobilisation de techniques spécifiques pour l’établissement des textes, l’enregistrement des annotations scientifiques et la publication.

Deux considérations doivent principalement guider les choix en la matière&nbsp;:

* d’une part l’adaptation aux objectifs scientifiques du projet,
* d’autre part l’interopérabilité et la pérennisation.

Le dialecte XML de la Text Encoding Initiative (TEI) s’est très largement imposé ces dernières années comme **standard de fait** dans le domaine de l’édition numérique à caractère scientifique.

Du point de vue de la pérennité, le Référentiel général d’interopérabilité publié en 2009 par la Direction générale de la modernisation de l’État recommande l’utilisation des technologies XML (eXtensible Markup Language)

- cf. Ministre du Budget, des Comptes publics, [Référentiel Général d’Interopérabilité (RGI)](http://references.modernisation.gouv.fr/rgi-interoperabilite), 2009.

## Conclusion

Telle que la définie Laurent Romary, la TEI est une «&nbsp;Norme de balisage, de notation et d’échanges de corpus des documents électroniques. Elle s’est élaborée à partir des besoins de structuration, de conceptualisation et de mise en réseau des textes&nbsp;»

Sa large adoption, les possibilités de personnalisation, ainsi que l’expérience acquise en matière de traitement des sources primaires à caractère textuel en histoire ou en littérature ces dernières années permet de juger que son utilisation est le plus souvent tout fait adaptée.

Nous verrons cependant que certains aspects propres à un projet peuvent nécessiter des adaptations dans l’utilisation de ce dialecte, ou qu’il faut parfois conjointement confier à d’autres modèles documentaires la prise en charge de l’enregistrement du travail.

---

### 3. Mise en œuvre
## 3.2. La Text Encoding Initiative (en résumé)

* Un effort international pour unifier les pratiques d’encodage de textes dans le domaine académique
* Un vocabulaire XML qui permet de produire des modèles de textes
* Un cadre de travail
* Un ensemble de recommandations ([Guidelines](http://www.tei-c.org/Guidelines/))

???

La Text Encoding Initiative (TEI) est un effort international pour **unifier les pratiques d’encodage de textes** dans le domaine académique.

Elle fournit **un vocabulaire XML** qui permet de produire des modèles de textes que l’on peut utiliser à différentes fins notamment pour l’édition de sources primaires.

Plus qu’un schéma générique, elle offre en fait **un cadre de travail** qui permet de traiter différents cas de figure.

Ce cadre de travail se compose

* d’un vocabulaire,
* d’une documentation qui en fournit la sémantique en langage naturel,
* et d’un ensemble de recommandations rassemblées sous l’intitulé de Guidelines.

En ce sens, comme le relève Florence Clavaud dans son cours à l’École nationale des chartes, il s’agit plutôt d’une sorte d’« ontologie générique du texte ».

---

### 3. Mise en œuvre
## 3.3. Un exemple de workflow avec la TEI

* Modélisation des documents
* Spécification d’un sous-ensemble de la TEI (fichier ODD)
* Génération d’un schéma et d’une documentation
* Encodage des documents

Révision du modèle (processus itératif)

???

### Personnalisation de la TEI

La TEI a été conçue comme un modèle générique et extensible. Elle laisse entièrement libre le chercheur de ses choix de modélisation.

La TEI fournit ainsi, à l’aide d’un vocabulaire et d’une infrastructure technique, **un cadre de travail pour la modélisation des textes**. Dans la limite de leur expressivité, de tels modèles peuvent être employés à telles ou telles fins. La volonté de la TEI de couvrir l’ensemble des besoins a pour pendant négatif la nécessité de personnaliser son schéma. Et l’utilisation de la TEI suppose l’apprentissage de son vocabulaire.

* Modélisation des documents
* Spécification d’un sous ensemble de la TEI (fichier ODD)
* Génération d’un schéma et d’une documentation
* Encodage des documents
* Révision du modèle (processus itératif)

## S’approprier la TEI

Cette difficulté d’accès, ainsi que la nécessité de manier des outils nouveaux, reste un problème qui n’est toujours pas complètement réglé. Cependant, la TEI a largement été adoptée aujourd’hui dans le secteur académique pour la publication de sources primaires ou l’édition numérique. C’est la raison pour laquelle on peut affirmer qu’elle constitue de ce point de vue un standard de fait qui justifie en grande partie son utilisation dans un projet scientifique d’édition.

---

### 3. Mise en œuvre
## 3.4. Le problème de l’interopérabilité

être conforme à la TEI ne signifie pas nécessairement être interopérable

* Mécanismes d’extension et de personnalisation
* Notion de conformité à la TEI (honnêteté)
* Déclarer ses pratiques de manière formelle
* Respect des bonnes pratiques de son domaine métier

???

# Le problème de l’interopérabilité

À de nombreux égards, le large emploi de la TEI est censé répondre à un **désir d’interopérabilité et de pérennisation**. La promesse des standards est de nous rendre la vie plus aisée : TEI, XML, Unicode ont le potentiel de faciliter l’échange et la réutilisation des documents, c’est notamment la raison pour laquelle on y a recours.

Cependant, par sa généricité même, la nature profonde de la TEI qui nécessite d’opérer des choix, ou permet d’être étendue en fonction des besoins, explique en grande partie les difficultés que l’on peut rencontrer lorsqu’il s’agit de rassembler des collections de documents en termes de compatibilité.

Il ne suffit pas que les textes soient tous encodés en TEI pour qu’ils soient véritablement interopérables. Chaque document est représentatif du modèle que se fait l’éditeur du texte. Ainsi, la compatibilité ne peut être atteinte que si plusieurs documents suivent le même ensemble de conventions.

---

## Conclusion

???

# Avantages

Conçue comme un modèle générique de structuration et de sémantisation des textes, la TEI présente de nombreux avantages. On relève notamment&nbsp;:

* sa modularité et sa flexibilité
* son expressivité (niveau de granularité)
* le fait qu’il s’agit d’un standard reconnu internationalement (interopérabilité, pérennité)
* le fait qu’elle dispose des propriétés intrinsèques au modèle XML&nbsp;: séparation entre le contenu et a présentation, possibilité de générer plusieurs formats de sortie à partir d’une même source, bon candidat pour la pérennisation
* son adaptation à l’édition électronique (croisement de sources, fac simili, hyperliens, etc.)
* les possibilités de modulation de l’affichage et d’accessibilité, ses aspects économiques


Mis à part le fait qu’elle soit rapidement apparue comme un standard de fait pour la publication de textes numériques en sciences humaines, ce sont d’abord ces qualités qui expliquent la large implantation de la TEI dans la communauté scientifique. Elle sert de format à de nombreux projets d’envergure internationale ([Blake Archive](http://www.blakearchive.org) , [Perseus Digital Library](http://www.perseus.tufts.edu/) sous la direction de Gregory Crane, [Rosetti Archive](http://www.rossettiarchive.org), etc.). Plusieurs projets français de grande envergure utilisent également la TEI dans le domaine des sciences historiques ([Les Bibliothèques virtuelles humanistes](http://www.bvh.univ-tours.fr), [Élec](http://elec.enc.sorbonne.fr), le [Portail Telma](http://www.cn-telma.fr), ENS Lyon, [Desgodets](http://www.desgodets.net), [ANR Ampère](http://www.ampere.cnrs.fr), etc.).


---


## Orientations bibliographiques
- Burnard, Lou. [What is the Text Encoding Initiative](http://books.openedition.org/oep/426), OpenEdition Books, 2014.
- Sperberg-McQueen, C. Michael, Lou Burnard, and Syd Bauman. [TEI P5&nbsp;: Guidelines for Electronic Text Encoding](http://www.tei-c.org/Guidelines/P5/). Charlottesville, Virginia: Text Encoding Initiative Consortium, version 2.5.0, 2013.
- Wittern, Christian, Ciula, Arianna, Tuohy, Conal, ["The Making of TEI P5"](http://llc.oxfordjournals.org/content/24/3/281.abstract) Literary and Linguistic Computing 24, no. 3 (2009): 281-296.
- Ide, Nancy M., and C. Michael Sperberg-McQueen. ["The Text Encoding Initiative: Its History, Goals, and Future Development."](http://www.cs.vassar.edu/~ide/papers/teiHistory.pdf) In Computers and the Humanities. Edited by Nancy M. Ide and Jean Véronis. 1995.
- Mylonas, Elli, and Allen Renear. ["The Text Encoding Initiative at 10: Not Just An Interchange Format Anymore – but a New Research Community."](http://link.springer.com/article/10.1023%2FA%3A1001832310939) Computers and the Humanities 33, no. 1-2 (1999): doi:10.1023/A:1001832310939.
