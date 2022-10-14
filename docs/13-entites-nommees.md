## HNU3052/HNU6052 Humanités numériques : introduction à la TEI

# Entités nommées

1. Les entités nommées : définition
2. Les formes du nom
3. Le modèle conceptuel (traits, states, events)

---

## Introduction

???

Ces dernières années, dans le cadre de la P5, un important travail a été mené sur la représentation des lieux et des personnes qui peut particulièrement intéresser les historiens. Le module `namesdates` est très largement issu de ce travail.

Parallèlement à cet effort de modélisation, un travail en cours sur le mapping de ce modèle de contenu avec CIDOC-CRM au sein d’un [groupe d’intérêt spécial (SIG) consacré aux ontologies](http://www.tei-c.org/SIG/Ontologies/).

Pour ce qui concerne l’histoire de l’art, il faut également noter un autre groupe de travail sur la définition d’un élément `<object>`.

---


## 1. Entités nommées : définition
Unités lexicales sélectionnées pour leur intérêt sémantique

* noms de lieux
* noms de personnes
* objets, etc.

???

Les entités nommées sont des unités lexicales sélectionnées pour leur intérêt sémantique.

La TEI se positionne avec Frege dans la grande discussion philosophique autour de la théorie de référence&nbsp;: elle cherche à encoder ce qu’il appelle das bedeutung (signification).

---

### 1. Entités nommées : définition
## Pourquoi s’en occuper&nbsp;?

* Construction d’index
* Constitution de bases de données
* Exposition dans le LOD

???

* Utiliser les textes comme une base de données
* Mise en relation des textes entre eux
* Traitement type TAL (traitement automatique de la langue), cartographie, index (facile avec XSLT)
* Suivi de tendance, veille
* Optimisation de recherche et moteur de recherche sémantique
* Production de savoir par inférence (classification de documents par exemple)

**En perspective&nbsp;: le web sémantique**

---

### 1. Entités nommées : définition
## Ce que propose la TEI pour les entités-nommées

#### Balisage générique
Pour signaler la présence des noms propres ou de références nominales dans un texte

* `<name>` nom quelconque
* `<rs>` chaîne de référence

Où des attributs tels que `@ref` permettent de pointer vers une description de rérence.

???

### Balisage plus spécifique

* `<persName>` nom de personne
* `<orgName>` nom de personne
* `<placeName>` nom de lieu

---

### 1. Entités nommées : définition
## La classe `model.nameLike`

Regroupe les éléments qui se rapportent tous à un nom de personne ou de lieu

* agents (`<name>`, `<orgName>`, `<persName>`)
* lieux (`<place>`, `<country>`, `<district>`...)

Chacun avec des propriétés de nommage, des traits, des états, des événements, des relations.

???

L’élément `<person>` peut être instancié à l’intérieur d’un élément `<persList>` pour créer par exemple un fichier d’autorité dans le cadre d’un projet.

La classe `model.namelike` (comme un nom) regroupe des éléments qui se rapportent tous à un nom de personne ou de lieu. Les éléments appartenant à cette classe y figurent. On peut voir que c’est une super-classe qui est composée de plusieurs classes qui comprennent des éléments comme `<persname>`, `<name>`, etc.

Comme il s’agit d’une classe, tous les éléments qui appartiennent à cette classe disposent de certaines propriétés.

---

## 2. Les formes du nom

exemple de personne

* La forme du nom peut être fournie au moyen de l’élément `<persName>`
* Cet élément est répétable

```xml

<person  xml:id="ArnMag">
  <persName xml:lang="is">Árni Magnússon</persName>
  <persName xml:lang="da">Arne Magnusson</persName>
  <persName xml:lang="la">Arnas Magnæus</persName>
</person>
```

```xml

<orgName  type="voluntary" ref="tag:projectname.org,2012:PAS1">
  Pennsyla. Abolition Society</orgName>
```

???

L’association avec la classe `<person>` est basée sur la hiérarchie de l’élément XML (inclusion). L’association est implicite.

Pour indiquer plusieurs formes du nom distinctes, cet élément est répétable. Agrégation&nbsp;: une instance de la classe `<person>` possède une ou plusieurs instances (ou "composants") de la classe cible, ici `<persName>`

**p. e.** pour les formes langagières, la forme du nom autorisée, etc.

ici, c’est la conjonction de l’élément et de l’attribut `@full` qui permet de typer la forme du nom.

Par exemple contraindre la fourniture d’une forme autorisée du nom, d’une langue, etc.

Ou au contraire autoriser son absence.

---

### 2. Les formes du nom
## Composantes du nom

* `forename` prénom
* `surname` nom de famille
* `nameLink`, `roleName`, `genName`

`@full` indique si le nom est donné dans une forme normalisée

`@sort` spécifie l’ordre des composantes du nom entre elles

```xml

<persName  ref="tag:projectname.org,2012:pn9">
  <forename sort="2">Sergei</forename>
  <forename sort="3" type="patronym">Mikhailovic</forename>
  <surname sort="1">Uspensky</surname>
</persName>
```

???

De la même façon que tout à l’heure, il peut y avoir plusieurs manières de traiter les composantes du nom&nbsp;:

`<forename>`, `<surname>`, etc.

nom propre, prénom, particules, titres, etc.

`model.persNamePart` groupe les éléments qui font partie d’un nom de personne.

Comporte un certain nombre d’éléments qui permettent à l’encodeur de fournir une sous-structure détaillée pour la désignation des noms propres.

`<addName>` (additional name) contient une composante additionnelle du nom, telle qu’un surnom, un épithète, un alias ou n’importe quelle autre phrase descriptive utilisée dans un nom de personne.

`<forename>` contient un prénom, ou un nom de baptême.

`<genName>` (generational name component) contient une composante de nom utilisée pour distinguer des personnes de même nom sur la base de leur âge relatif ou de générations.

`<nameLink>` (name link) contient une phrase de connexion ou un lien entre des parties du nom mais qui ne sont pas regardés comme en faisant partie, comme van der, of.

`<roleName>` contient une composante du nom qui indique que le référent a un rôle particulier ou une position dans la société, comme un titre d’office ou un rang.

`<surname>` contient un nom de famille (inherited), par opposition à un nom de baptème, un prénom ou un surnom.

`att.personal` (attributs pour les composantes du nom, mais pas nécessairement) attributs communs pour les éléments qui font partie habituellement d’un nom.

`<roleName>` qui peut par exemple être typé&nbsp;: Nobiliaire, honorifique, grade, épithète

```xml

<persName  ref="tag:projectname.org,2012:DUDO1">
  <roleName type="honorific" full="abb">Mme</roleName>
  <nameLink>de la</nameLink>
  <surname>Rochefoucault</surname>
</persName>
```

---

### 2. Les formes du nom
## Liens vers des données d’autorité

* `@key` pour fournir un identifiant externe
* `@ref` pour une référence au moyen d’une URI

On privilégiera dans des notices d’autorité, une approche qui s’appuie sur un élément introduit récemment dans le modèle de contenu de `<person>`, `<org>` et `<place>`

* `<idno>`

```xml

<person >
  <persName>
    <roleName type="honorific" full="abb">Mme</roleName>
    <nameLink>de la</nameLink>
    <surname>Rochefoucault</surname>
  </persName>
  <idno type="autBnf">http://catalogue.bnf.fr/ark:/12148/cb16377695t</idno>
</person>
```

???

`att.canonical` provides attributes which can be used to associate a representation such as a name or title with canonical information about the object being named or referenced.

`@key` provides an externally-defined means of identifying the entity (or entities) being named, using a coded value of some kind.

`@ref` (reference) provides an explicit means of locating a full definition for the entity being named by means of one or more URIs.

`att.naming` provides attributes common to elements which refer to named persons, places, organizations etc.

`@role` may be used to specify further information about the entity referenced by this name in the form of a set of whitespace-separated values, for example the occupation of a person, or the status of a place.

`@nymRef` (reference to the canonical name) provides a means of locating the canonical form (nym) of the names associated with the object named by the element bearing it.

`att.responsibility` provides attributes indicating who is responsible for something asserted by the markup and the degree of certainty associated with it.

`@resp` (responsible party) indicates the agency responsible for the intervention or interpretation, for example an editor or transcriber.

`@cert` (certainty) signifies the degree of certainty associated with the intervention or interpretation.

---

## 3. Le modèle conceptuel

Le périmètres des caractéristiques pouvant affecter une entité nommée est très vaste.

La TEI fournit trois éléments génériques, et quelques-uns plus spécifiques. Elle identifie trois classes principales d’information&nbsp;:

* des **traits (traits)**, qui en général ne changent pas au cours du temps
* des **états (states)** qui sont seulement vrai une période de temps donnée
* des **événements (events)** ou incidents qui peuvent conduire à un changement d’état ou moins fréquemment de trait.

---

### 3. Le modèle conceptuel
## Éléments biographiques et prosopographiques

Ce module fournit également des éléments pour la représentation d’information à caractère biographique, historique ou proposographique sur la personne, les lieux, ou l’organisation à laquelle un nom fait référence.

-> production de fichier d’autorité ou collection d’information biographiques

???

Là encore, TEI propose une stratégie flexible où l’encodeur peut puiser selon selon l’approche adaptée à ses besoins.

---

### 3. Le modèle conceptuel
## Traits

Contiennent une description du statut ou de la qualité attribuée à une personne, un lieu ou une organisation qui typiquement, mais pas nécessairement, est indépendante du vouloir ou de l’action du porteur et habituellement n’est pas spécifique à une période de temps.

* `<sex>` le sexe d’une personne
* `<nationality>` contient une description informelle de la nationalité passée ou présente

???

`<trait>` contient une description de statut ou de qualité d’une personne, d’un lieu ou typiquement d’une organisation, mais pas nécessairement, indépendamment des actions de la personne, et habituellement indépendant du temps.

---

### 3. Le modèle conceptuel
## Traits

Traits, typiquement indépendants du vouloir de la personne, ou de ses actions. Peuvent être d’ordre physiques, sexe, couleur des yeux, ou culturels, ethniques, croyance…

```xml

<trait  type="ethnicity" key="alb">
  <label>Ethnicity</label>
  <desc>Ethnic Albanian.</desc>
</trait>
```

---

### 3. Le modèle conceptuel
## États

Les états incluent par exemple le statut marital, le lieu de résidence et la position ou l’occupation.

Durée définie, c’est-à-dire un début et une fin.

```xml

<state  type="office" from="1777-04-07" to="1780-07-12">
  Procureur</state>
```

---

### 3. Le modèle conceptuel
## États

Les **états** décrivent certains statuts ou qualités attribuées à une personne, à des lieux, ou des organisations généralement à un moment donné ou spécifique à une période de temps.

* `<faith>` spécifie la foi, la religion ou les croyances d’une personne
* `<langKnowledge>` (language knowledge) résume la connaissance linguistique d’une personne à un moment donné
* `<socecStatus>` (socio-economic status) contient une description ifnromelle du statut économique ou social perçu
* `<age>` spécifie l’âge d’une personne.
* `<occupation>` contient une description informelle de l’activité d’une personne ou de son emploi
* `<residence>` décrit les résidences présente ou passées d’une personne
* `<affiliation>` contient une description informelle de l’affiliation d’une personne à une organisation
* `<floruit>` information sur la période d’activité d’une personne
* `<education>` contient une description du niveau d’éducation d’une personne

???

`<state>` contient une description de statut ou de qualité attribuée à une personne, un lieu ou une organisation, souvent à un moment spécifique dans le temps ou dans une période de temps.

La classe `model.persStateLike` contient des éléments décrivant des caractéristiques physiques ou sociales construites.

---

### 3. Le modèle conceptuel
## Événements

* `<birth>`
* `<death>`
* `<event>`
* `<listeEvent>`

---

```xml

<person  xml:id="WM">
  <event type="marriage" when="1859-04-26">
    <label>Marriage</label>
    <desc>
      <name type="person" ref="#WM">William Morris</name> and <name type="person" ref="http://en.wikipedia.org/wiki/Jane_Burden">Jane Burden</name> were
      married at <name type="place">St Michael's Church, Ship Street, Oxford</name> on
      <date when="1859-04-26">26 April 1859</date>. The wedding was
      conducted by Morris's friend <name type="person" ref="#RWD">R. W.
      Dixon</name> with <name type="person" ref="#CBF">Charles
      Faulkner</name> as
      the best man. The bride was given away by her father,
      <name type="person" ref="#RB">Robert Burden</name>.
      According to the account that <name type="person" ref="http://en.wikipedia.org/wiki/Edward_Burne-Jones">Burne-Jones</name>
      gave <name type="person" ref="#JWM">Mackail</name>
      <quote>M. said to Dixon beforehand <said>Mind
      you don't call her Mary</said> but he did</quote>. The entry in the
      Register reads: <quote>William Morris, 25, Bachelor Gentleman, 13
      George Street, son of William Morris decd. Gentleman. Jane Burden,
      minor, spinster, 65 Holywell Street, d. of Robert Burden,
      Groom.</quote> The witnesses were Jane's parents and Faulkner. None of
      Morris's family attended the ceremony. Morris presented Jane with a
      plain gold ring bearing the London hallmark for 1858. She gave her
      husband a double-handled antique silver cup.</desc>
      <bibl>J. W. Mackail, <title>The Life of William Morris</title>, 1899.</bibl>
  </event>
</person>
```

???

Contiennent des données relatives à n’importe quelle événement significatif associé à une personne, un lieu ou une organisation.

`@where` pour indiquer le lieu en pointant vers un élément `<place>`

`<listEvent>` pour structurer

`att.responsibility` provides attributes indicating who is responsible for something asserted by the markup and the degree of certainty associated with it.

`@cert` (certainty) signifies the degree of certainty associated with the intervention or interpretation.

`@resp` (responsible party) indicates the agency responsible for the intervention or interpretation, for example an editor or transcriber.

att.editLike provides attributes describing the nature of an encoded scholarly intervention or interpretation of any kind.

`@evidence` indicates the nature of the evidence supporting the reliability or accuracy of the intervention or interpretation. Suggested values include: 1] internal; 2] external; 3] conjecture

`att.source` provides attributes for pointing to the source of a bibliographic reference.

`@source` provides a pointer to the bibliographical source from which a quotation or citation is drawn.

---

### 3. Le modèle conceptuel
## Exemple d’événement

```xml

<event xml:id="eMBB" from="1955-12-01" to="1956-12-20">
  <label>Montgomery Bus Boycott</label>
  <desc>A political and social protest campaign against
  the policy of racial segregation on the public transit
  system of the city of <placeName ref="#MONT">Montgomery
  </placeName>.</desc>
</event>
```

---

### 3. Le modèle conceptuel
## Relations

`<listRelation>` fournit des informations sur les relations identifiées parmi les personnes, les lieux et les organisations, soit informellement en prose, soit exprimées formellement sous forme de liens de relation.

```xml

<listRelation >
  <relation name="parent" active="#P1 #P2" passive="#P3 #P4"></relation>
  <relation name="spouse" mutual="#P1 #P2"></relation>
  <relation type="social" name="employer" active="#P1" passive="#P3 #P4"></relation>
</listRelation>
```
