## HNU3052/HNU6052 Humanités numériques : Introduction à l’édition critique avec la Text Encoding Initiative (TEI)

# L’entête TEI et la description des manuscrits

1. L’en-tête TEI (le `<teiHeader>`)
2. La description du fichier (`<fileDesc>`)
3. Les autres sous-composants de l’en-tête TEI

---

## Introduction

???

Un des avantages liés à l’utilisation de documents XML réside dans la possibilité de fournir des métadonnées directement dans le document. Ces métadonnées étant étroitement associées au fichier, elles facilitent l’échange de documents et leur intégration automatique dans des bases de données.

Le modèle de la TEI prévoit que les métadonnées soient renseignées dans un élément `<teiHeader>`. C’est au contenu de cet élément que nous allons maintenant nous intéresser plus particulièrement.

---

## 1. L’en-tête TEI (le `<teiHeader>`)

---

### 1. L’en-tête TEI (le `<teiHeader>`)
## Pourquoi fournir des métadonnées&nbsp;?

* documenter la source
* renseigner l’édition et ses attributions
* rendre possible l’intégration dans des bibliothèques numériques

L’entête d’un fichier TEI ou `<teiheader>` vous permet de finement renseigner les métadonnées de votre fichier. Elles renseignent aussi bien le fichier de votre édition que la source du texte édité.

???

## L’importance des métadonnées

L’entête TEI ou `<teiHeader>` vous permet de renseigner finement les métadonnées concernant votre fichier. Comme ces métadonnées qui comportent des informations sur l’information font partie du document, on peut dire qu’elles sont auto-portées.

Ces métadonnées peuvent aussi bien concerner la source du document édité que votre édition et ses attributions. La qualité de ces information et la granularité du modèle descriptif utilisé déterminent en grande partie les possibilité d’agrégation dans des bibliothèques numériques.

---

### 1. L’en-tête TEI (le `<teiHeader>`)
## Choix des modèles descriptifs

* cohérent avec la politique de votre établissement
* possibilité de mapping avec d’autres modèles
* conformité aux bonnes pratiques

Glorieux, Frédéric, et Jolivet, Vincent, [«&nbsp;weboai, Human web interface on OAI repository&nbsp;»](http://sourceforge.net/p/weboai/wiki/Home/), SourceForge.

???

Dans le cadre de la production d’une édition numérique il est souvent nécessaire de traiter avec soin les en-têtes TEI et de produire des métadonnées de qualité. La TEI propose de nombreuses manières possibles de fournir une description des fichiers.

Ici, pour arrêter les choix d’encodages, il convient d’examiner un certain nombre de pratiques documentaires existantes dans le monde bibliothéconomique et de rechercher des guides de bonnes pratiques pour la TEI.

Un travail en vue de permettre un moissonnage des en-têtes TEI en OAI-PMH (Open Archives Initiative Protocol for Metadata Harvesting) des éditions produites au sein du Consortium cahier a permis de se diriger vers la définition de pratiques commune pour la communauté francophone. Il serait dommage de ne pas s’y conformer.

Glorieux, Frédéric, et Jolivet, Vincent, [«&nbsp;weboai, Human web interface on OAI repository&nbsp;»](http://sourceforge.net/p/weboai/wiki/Home/), SourceForge.

http://weboai.cahier.huma-num.fr

---

### 1. L’en-tête TEI (le `<teiHeader>`)
## Macrostructure d’un document TEI

```xml
<TEI>
  <teiHeader>
    <!-- ... métadonnées ... -->
  </teiHeader>
  <text>
    <!-- ... votre édition ...-->
  </text>
</TEI>
```

???

Vous vous souvenez probablement qu’un document TEI dispose d’un élément racine `<TEI>` (ou `<teiCorpus>`) qui contient obligatoirement deux éléments enfants qui sont `<teiHeader>` et `<text>`.

C’est au sein du teiHeader que nous allons pouvoir renseigner les métadonnées concernant le texte édité.

---

### 1. L’en-tête TEI (le `<teiHeader>`)
## Les composants de l’en-tête (`<teiHeader>`)

Le `<teiHeader>` comporte un élément obligatoire `<fileDesc>` et trois éléments facultatifs
* fileDesc&nbsp;: contient la description du fichier
* encodingDesc&nbsp;: description des convention d’encodage
* profileDesc&nbsp;: informations classificatoires
* revisionDesc&nbsp;: description des révisions

---

### 1. L’en-tête TEI (le `<teiHeader>`)
## Exemple d’en-tête minimale

```xml
<teiHeader>
  <fileDesc>
    <titleStmt>
      <title><!-- titre du document --></title>
    </titleStmt>
    <publicationSmt>
      <p><!-- mentions de publication --></p>
    </publicationSmt>
    <sourceDesc>
      <p><!-- description de la source --></p>
    </sourceDesc>
  </fileDesc>
</teiHeader>
<text><!-- ... -->
```

---

## 2. La description du fichier (`<fileDesc>`)

`<fileDesc>` contient la description de fichier

* `<titleStmt>` mentions de titre et de responsabilité
* `<publicationStmt>` mentions de publication (du texte électronique)
* `<sourceDesc>` renseignements sur la source dont est issu le fichier numérique
* `<editionStmt>` informations relatives à l’édition
* `<extent>` taille du fichier
* `<seriesStmt>` informations relatives à la collection
* `<noteStmt>` notes fournissant des informations sur le texte

---

### 2. La description du fichier (`<fileDesc>`)
## Exemple d’en-tête minimale

```xml
<teiHeader>
  <fileDesc>
    <titleStmt>
      <title><!-- titre du document --></title>
    </titleStmt>
    <publicationSmt>
      <p><!-- mentions de publication --></p>
    </publicationSmt>
    <sourceDesc>
      <p><!-- description de la source --></p>
    </sourceDesc>
  </fileDesc>
</teiHeader>
```

---

### 2. La description du fichier (`<fileDesc>`)
## Mentions de titre et de responsabilité (`<titleStmt>`)

`<titleStmt>` contient les mentions de titre et de responsabilité

* `<title>` est obligatoire et répétable
* `<principal>`, `<author>`, `<editor>`, `<funder>` permettent de renseigner les mentions de responsabilité principales
* `<respStmt>` et ses sous-composants permettent de préciser les autres types de contribution

---

### 2. La description du fichier (`<fileDesc>`)
## Exemple de mentions de titre et de responsabilité (`<titleStmt>`)

```xml
<titleStmt>
  <title xml:lang="fre" type="main">Sauval 1724</title>
  <principal>
    <persName ref="#MCL">
      <forename>Marianne</forename>
      <surname>Cojannot-Le Blanc</surname>
    </persName>
  </principal>
  <funder>
    <orgName>Labex Les Passés dans le Présent</orgName>
    <date from="2013" to="2018">2013-2018</date>
  </funder>
  <respStmt>
    <resp key="mrk">encodage XML-TEI</resp>
      <persName ref="#EC">
        <forename>Emmanuel</forename>
        <surname>Château</surname>
      </persName>
  </respStmt>
  <!-- ... -->
</titleStmt>
```

---

### 2. La description du fichier (`<fileDesc>`)
## `<teiHeader>`, mentions de responsabilité

```xml
<teiHeader xmlns="http://www.tei-c.org/ns/Examples">
  <fileDesc>
    <titleStmt>
      <title xml:lang="fr" type="main">Sauval 1724</title>
      <principal>
        <persName ref="#MCL">
          <forename>Marianne</forename>
          <surname>Cojannot-Le Blanc</surname>
        </persName>
      </principal>
      <funder>
        <orgName>Labex Les Passés dans le Présent</orgName>
        <date from="2013" to="2018">2013-2018</date>
      </funder>
      <respStmt>
        <resp key="prg">modélisation XML-TEI</resp>
        <persName ref="#EC">
          <forename>Emmanuel</forename>
          <surname>Château</surname>
        </persName>
      </respStmt><!-- ... -->
    </titleStmt>
    <editionStmt>
      <edition n="1">première édition électronique, <date from="2013" to="2018">2013-2018</date></edition>
    </editionStmt>
  <!-- ... -->
  </fileDesc>
</teiHeader>
```

---

### 2. La description du fichier (`<fileDesc>`)
## Mentions de publications

```xml
<teiHeader xmlns="http://www.tei-c.org/ns/Examples">
  <!-- ... -->
  <publicationStmt>
    <authority>
      <orgName>Histoire des Arts &amp; Représentations</orgName>
      <orgName type="acronym">HAR</orgName>
      <orgName type="alt">EA 4414</orgName>
      <address>
        <addrLine>Université Paris Ouest-Nanterre La Défense</addrLine>
        <addrLine>http://har.u-paris10.fr</addrLine>
      </address>
    </authority>
    <date from="2014" to="2018">2014-2018</date>
    <idno>ark</idno>
    <!-- responsable de la publication -->
    <publisher>
      <orgName>Histoire des Arts &amp; Représentations</orgName>
    </publisher>
    <availability status="restricted" xml:id="gdpLicenceTextSauval1724">
      <licence target="http://creativecommons.org/licenses/by-nc-sa/4.0/fr/">
      <p>Texte de la licence</p></licence>
    </availability>
  </publicationStmt>
  <revisionDesc>
    <change when="2014-04-15">Remaniement de l’entête et
      de la structure</change>
  </revisionDesc>
</teiHeader>
```

---

### 2. La description du fichier (`<fileDesc>`)
## Description de la source (`<sourceDesc>`)

`<sourceDesc>` est un élément obligatoire, il est destiné à accueillir une description de la source du document soit en texte libre soit de manière structurée avec les éléments `<bibl>`, `<msDesc>`, etc.

```xml
<sourceDesc>
    <p>Fichier nativement numérique</p>
  </sourceDesc>
```

```xml
<bibl>Henri Sauval. <title>Histoire et recherches des antiquités
  de la ville de Paris </title>. Paris&nbsp;: Charles Moette et Jacques
  Chardon, 1724</bibl>
```

???

La description de la source est un élément obligatoire dans la description d’un fichier TEI. Notez bien que la TEI différencie clairement les informations concernant l’édition des informations concernant la source du texte encodé (avec `<sourceDesc>`).

Plus tard, nous verrons que la TEI offre également un très riche modèle de contenu pour la description des sources manuscrites.

---

## 3. Les autres sous-composants de l’en-tête TEI

---

### 3. Les autres sous-composants de l’en-tête TEI
## Après la description de fichier…

Après `<fileDesc>`, l’entête peut contenir trois éléments optionnels :

* `<encodingDesc>`&nbsp;: description des convention d’encodage
* `<profileDesc>`&nbsp;: informations classificatoires
* `<revisionDesc>`&nbsp;: description des révisions

---

### 3. Les autres sous-composants de l’en-tête TEI
## Description de l’encodage

`<encodingDesc>` est un élément optionnel destiné à documenter l’encodage.

* soit des structures simples avec des paragraphes `<p>`
* une description structurée à l’aide des éléments ci-dessous&nbsp;:
* `<projectDesc>` description de l’objectif de l’édition électronique
* `<samplingDesc>` méthode d’échantillonnage
* `<tagsDecl>` description du balisage employé
* `<refDecl>` précision sur la construction des références canoniques
* `<geoDecl>` système de notation des coordonnées géographiques
* `<schemaSpec>` spécification de schéma

---

### 3. Les autres sous-composants de l’en-tête TEI
## exemple d’`<encodingDesc>`

```xml
<encodingDesc>
  <charDecl>
    <glyph xml:id="uut">
      <glyphName>two latin small letter u with macron and vertical
      line</glyphName>
      <charProp>
        <localName>entity</localName>
        <value>omega2</value>
      </charProp>
      <mapping type="composed">u͞u͞|</mapping>
      <graphic url="x2.jpg"></graphic>
    </glyph>
</charDecl>
    <editorialDecl>
      <normalization>
        <p>La ponctuation a été ajoutée, conformément...</p>
        <p>les mots ont été séparés lorsque l’usage actuel...</p>
      </normalization>
    </editorialDecl>
  </encodingDesc>
```

???

# Par exemple, pour les ouvrages imprimés

```xml
<hyphenation>
    <p>Pour les ouvrages imprimés, il n’a pas été tenu compte
    de l’hyphénation.</p>
  </hyphenation>
```

---

### 3. Les autres sous-composants de l’en-tête TEI
## `<profileDesc>`

* `<abstract>` bref résumé
* `<creation>` informations sur la création du texte
* `<langUsage>` langues présentes dans le texte
* `<textClass>` nature du texte d’après un thesaurus interne ou externe

```xml
<profileDesc>
  <creation><date when="2009-04-20">20 avril
  2009</date></creation>
  <langUsage>
    <language indent="fre" scope="60">Français</language>
    <language ident="lat" scope="40">Latin</language>
  </langUsage>
</profileDesc>
```

---

### 3. Les autres sous-composants de l’en-tête TEI
## `<revisionDesc>`

Enregistre les révisions et modifications du fichier

```xml
<revisionDesc>
  <change when="2009-11" who="#VJ">Deuxième édition
  électronique</change>
  <change when="2009-10" who="#FG">Schéma et
  transformations</change>
  <change when="2009-10" who="#CD">Encodage de
  l’apparat critique</change>
</revisionDesc>
```

---

## 4. La description des manuscrits (pour aller plus loin)

???

# Le manuscrit&nbsp;: un cas particulier

* Un manuscrit est **un object unique**, souvent d’importance culturelle ou politique majeur.

* Un livre, par contre, existe habituellement en pluseurs exemplaires. Une description adéquate se fait avec l’aide des conventions bien établies, bien connues.

* Pour les manuscrits, il existe plusieurs traditions de documentation, et peu de consensus.

On pourrait dire autant pour d’autres objets "texte-portant" p.e. les inscriptions classiques… cf. Epidoc

---

### 4. La description des manuscrits (pour aller plus loin)
## Propositions de la TEI

La TEI propose un élément `<msDesc>`, apte à plusieurs applications&nbsp;:

* base de données d’enregistrements bibliographique (finding aid)
* texte discursif contenant plusieurs enregistrements (catalogue raisonné)
* assemblage des metadonnées au sein d’une édition numérique (electronic edition)
* instrument pour la codicologie quantitative

Avoir le beurre et l’argent du beurre&nbsp;?

---

### 4. La description des manuscrits (pour aller plus loin)
## Catalogue Raisonné

Un `<msDesc>` peut apparaître dans les mêmes contextes qu’un `<p>` paragraphe

```xml
<div>
  <head>Bibliothèque virtuel des humanistes</head>
  <p>Le BVH se situe à l’Universite Francois Rabelais de Tours. Parmi ses fonds sont à regarder quelques manuscrits remarquables du 16e siecle …</p>
  <p>Ce manuscrit par exemple. </p>
  <msDesc xml:id="BVH-0101" xml:lang="fr"><!-- …--></msDesc>
  <p>Par contre, cet autre manuscrit…</p>
  <msDesc xml:id="BVH-0595" xml:lang="fr"><!-- …--></msDesc>
</div>
```

Dans ce cas, la description aura une tendance belle-lettriste

---

### 4. La description des manuscrits (pour aller plus loin)
## Application du `<msDesc>` dans l’édition numérique

Un `<msDesc>` peut apparaître aussi au sein du `<teiHeader>` attaché à une édition numérique d’un ou plusieurs manuscrits.

```xml
<TEI>
  <teiHeader>
    <fileDesc>
      <titleStmt>
        <title>Edition numérique du Ms 629</title>
        <!-- ... -->
      </titleStmt>
      <sourceDesc>
        <msDesc><!-- ... --></msDesc>
      </sourceDesc>
    </fileDesc>
  </teiHeader>
  <text><!--...--></text>
</TEI>
```

Dans ce cas, la description aura une tendance base-de-données

---

### 4. La description des manuscrits (pour aller plus loin)
## Composants du `<msDesc>` (1)

L’élément `<msDesc>` doit contenir un élément `<msIdentifier>` qui fournit une identification (ou plusieures) du manuscrit

Facultativement il est completé par une séléction d’ éléments plus spécialisés&nbsp;:

* `<msContents>`&nbsp;: décrit le contenu intellectuel, soit en `<p>`, soit avec une série d’éléments structurés (`<msItem>`) pour chacun des items du manuscrit.
* `<physDesc>`&nbsp;: contient une description physique complète, soit en `<p>`, soit avec une série d’éléments plus spécialisés, chacun décrivant les pages, l’écriture, la reliure etc.
* `<history>`&nbsp;: contient un historique complet du manuscrit et sa provenance, soit en `<p>`, soit avec d’éléments plus spécialisés.
* `<additional>`&nbsp;: contient des informations supplémentaires, notamment administratives concernant sa disponibilité, son historique de sa conservation, etc.


---

```xml
<sourceDesc>
  <msDesc>
    <msIdentifier>
      <country>France</country>
      <settlement>Paris</settlement>
      <repository>Archives nationales</repository>
      <collection>Commerce et Industrie</collection>
      <idno>F/12/5080</idno>
    </msIdentifier>
    <msContents>
      <p>Minute d’un rapport de proposition à la Légion d’honneur fait, en
      1850, par le ministre du Commerce et de l’Agriculture et
      président de la Société de géographie, Jean-Baptiste Dumas, au
      Président de la République, en faveur des frères d’Abbadie,
      Antoine (1810-1897) et Arnaud (1815-1893), auteurs d’un voyage
      en Abyssinie.</p>
    </msContents>
    <physDesc>
      <p>Deux feuilles de papier 24 x 12 cm; écriture encre noir.</p>
      <handDesc>
        <handNote xml:id="AA" scope="major">Antoine d’Abbadie</handNote>
        <handNote xml:id="DJB" scope="minor">Jean-Baptiste Dumas</handNote>
        <handNote xml:id="EPR" scope="minor">membre inconnu du cabinet du ministre</handNote>
      </handDesc>
    </physDesc>
  </msDesc>
</sourceDesc>
```

---

### 4. La description des manuscrits (pour aller plus loin)
## Identification (1)

L’élément `<msIdentifier>`

Une spécification classique est divisée en trois :

* lieu (`<country>`, `<region>`, `<settlement>`)
* entrepôt (`<institution>`, `<repository>`)
* identifiant (`<collection>`, `<idno>`)

```xml
<msIdentifier>
  <country>France</country>
  <settlement>Troyes</settlement>
  <repository>Bibliothèque Municipale</repository>
  <idno>50</idno>
</msIdentifier>
```


---

### 4. La description des manuscrits (pour aller plus loin)
## Identification (2)

L’élément `<msName>` fournit un nom ou une appellation familière (surnom)&nbsp;:

```xml
<msIdentifier>
  <country>Danmark</country>
  <settlement>København</settlement>
  <repository> Det ArnamagnæanskeInstitut </repository>
  <idno>AM 45 fol.</idno>
  <msName xml:lang="la">Codex Frisianus</msName>
  <msName xml:lang="is">Fríssbók</msName>
</msIdentifier>
```


---

### 4. La description des manuscrits (pour aller plus loin)
## Contenu intellectuel

* Des paragraphes…
* … ou une arborescence d’éléments `<msItem>`
* … précedée d’une sommaire facultative

On peut décrire le contenu à un niveau general&nbsp;:

```xml
<msContents>
    <p>Recueil des comptes fiscaux de l’Abbaye de Nimportou.</p>
  </msContents>
```

Ou bien, on peut distinguer et détailler chaque item (ou quelques un)&nbsp;:

```xml
<msContents>
  <summary>Recueil des comptes fiscaux de l’Abbaye de Nimportou.</summary>
    <msItem>
        <!-- compte 1 -->
    </msItem>
    <msItem>
        <!-- compte 2 -->
    </msItem>
</msContents>
```


---

### 4. La description des manuscrits (pour aller plus loin)
## L’élément `<msItem>`

Un manuscrit contient plusieurs **items** distincts, chacun en principe localisé dans un (ou plusieurs) lieu(x), ce qu’on appelle leur locus.

* L’element `<locus>` contient une localisation formelle, facultativement normalisée par les attributs `@from` et `@to`
* et suivie d’une sélection des éléments suivants&nbsp;:
* `<author>`, `<respStmt>`
* `<title>`, `<rubric>`, `<incipit>`, `<explicit>`, `<colophon>`, `<finalRubric>`
* `<quote>`, `<textLang>`, `<decoNote>`, `<bibl>`, `<listBibl>`, `<note>` …
* … ou un `<msItem>` imbriqué

---

### 4. La description des manuscrits (pour aller plus loin)
## `<msContents>` avec plusieurs `<msItem>`s


```xml
<msContents>
    <msItem n="1">
      <locus from="5r" to="7v">fols. 5r-7v</locus>
      <incipit>Pater noster qui es in celis</incipit>
    </msItem>
    <msItem n="2">
      <locus from="7v" to="8v">fols. 7v-8v</locus>
      <incipit defective="true">tatem dedit hominibus alleluia.</incipit>
    </msItem>
    <!-- … -->
    <msItem n="6">
      <locus from="14r" to="126v">fols. 14r-126v</locus>
      <author>Chaucer, Geoffrey</author>
      <title type="uniform">Troilus and Criseyde</title>
    </msItem>
  </msContents>
```

---

### 4. La description des manuscrits (pour aller plus loin)
## Description physique

Un groupement commode de plusieurs sujets&nbsp;:

* `<objectDesc>`&nbsp;: le support matériel du manuscrit
* `<handDesc>`&nbsp;: description des mains et des écritures
* `<musicNotation>`, `<decoDesc>`, `<additions>` musique, decoration, annotations
* `<bindingDesc>` et `<sealDesc>`&nbsp;: reliure, sceaux
* `<accMat>`&nbsp;: materiaux associés/attachés

Comme ailleurs, ces éléments généralement fournissent un choix entre des éléments plus ou moins structurants et une description en prose.

---

### 4. La description des manuscrits (pour aller plus loin)
## `<physDesc>` exemple simple

```xml
<physDesc>
  <objectDesc>
    <supportDesc>
      <condition>
        <damage>Il manque les trois derniers feuillets,
         dont deux blancs.</damage>
      </condition>
    </supportDesc>
  </objectDesc>
  <bindingDesc>
    <binding>
      <p>Reliure maroquin vert, signée Koehler. Dos à
      4 nerfs.</p>
    </binding>
  </bindingDesc>
</physDesc>
```

---

### 4. La description des manuscrits (pour aller plus loin)
## Le support (1)

Pour distinguer l’objet inscrit de la manière où il est inscrit, `<objectDesc>` peut être structuré en `<supportDesc>` et `<layoutDesc>`
```xml
<objectDesc  form="codex">
  <supportDesc material="mixed">
    <p><material>parchemin</material>
    et <material>papier</material> du
    12eme siecle.</p>
  </supportDesc>
  <layoutDesc>
    <layout columns="1" ruledLines="25 32"/>
  </layoutDesc>
</objectDesc>
```


---

### 4. La description des manuscrits (pour aller plus loin)
## Le support (2)

D’autres éléments structurants sont disponibles pour la description détaillée du support matériel&nbsp;: `<support>`, `<extent>`, `<foliation>`, `<collation>`, `<condition>` .

Exemple&nbsp;:
```xml
<supportDesc>
  <support> Rouleau de parchemin avec des rubans de
  <material>soie</material>.</support>
  <extent>
    <dimensions type="binding">
      <height unit="mm">155</height>
      <width unit="mm">95</width>
      <depth unit="mm">31</depth>
    </dimensions>
  </extent>
</supportDesc>
```

---

### 4. La description des manuscrits (pour aller plus loin)
## Le support (3)

Exemple&nbsp;:

```xml
<supportDesc>
  <support>parchemin</support>
  <foliation>Foliotation du 18eme en encre rouge au centre de la marge
  exterieure des premiers pages de chaque cahier.</foliation>
  <collation>2 f. préliminaire, 52 f, 3 f. postliminaires.</collation>
</supportDesc>
```

---

### 4. La description des manuscrits (pour aller plus loin)
## Layout(s)

Plusiers mises-en-forme (layout) peuvent être spécifiées&nbsp;:

```xml
<layoutDesc>
  <layout ruledLines="25" columns="1">
    <p><locus from="1r" to="202v"/>
    <locus from="210r" to="212v"/> 25 lignes réglées.</p>
  </layout>
  <layout ruledLines="34 50" columns="2">
    <p><locus from="203r" to="209v"/>Entre 34 et 50
        lignes réglées, disposées en deux colonnes.</p>
  </layout>
</layoutDesc>
```

---

### 4. La description des manuscrits (pour aller plus loin)
## `<handDesc>` et `<decoDesc>`

Ces éléments décrivent respectivement les mains (écritures) distinguées dans un manuscrit et les décorations, soit en prose, soit avec les éléments structurants&nbsp;:

* `<handNote>` décrit un style d’écriture ou une main qui sont reconnus dans un manuscrit.
* `<decoNote>`contient une note décrivant soit un élément de décoration du manuscrit, soit une catégorie relativement homogène de tels éléments.


---

### 4. La description des manuscrits (pour aller plus loin)
## `<handDesc>` exemple (1)

```xml
<handDesc  hands="2">
  <p>The manuscript is written in two contemporary
  hands, otherwise unknown, but clearly those
  of practised scribes. Hand I writes ff.1r-22v
  and hand II ff. 23 and 24. Some scholars, notably
  Verner Dahlerup and Hreinn Benediktsson, have
  argued for a third hand on f. 24, but the evidence
  for this is insubstantial.</p>
</handDesc>
```

---

### 4. La description des manuscrits (pour aller plus loin)
## `<handDesc>` exemple (2)

```xml
<physDesc>
  <handDesc>
    <handNote xml:id="secretaire" scope="major">Un secrétaire
    a couché par écrit une liste de questions.</handNote>
    <handNote xml:id="PDN" scope="minor">Philippe de Noailles
    (1715-1794), intendant et gouverneur du château et domaine
    de Versailles, a porté dans la marge de gauche les réponses
    du roi, en paraphant ces réponses. Il a également signé le
    document.</handNote>
    <handNote xml:id="anonyme" scope="minor">une autre main à
    noté la date du document en haut de la page.</handNote>
  </handDesc>
</physDesc>
```

---

### 4. La description des manuscrits (pour aller plus loin)
## Ajouts significatifs

L’élément `<additions>` contient une description des ajouts significatifs trouvés dans un manuscrit, tels que gloses marginales ou autres annotations.


```xml
<additions>
  <p>The text of this manuscript is not interpolated
  with sentences from Royal decrees promulgated
  in 1294, 1305 and 1314. In the margins, however,
  another somewhat later scribe has added the
  relevant paragraphs of these decrees, see pp. 8,
  24, 44, 47 etc.</p>
  <p>As a humorous gesture the scribe in one opening
  of the manuscript, pp. 36 and 37, has prolonged
  the lower stems of one letter f and five letters
  þ and has them drizzle down the margin.</p>
</additions>
```

---

### 4. La description des manuscrits (pour aller plus loin)
## Matériel d’accompagnement

`<accMat>` (accompanying material) donne des détails sur tout matériel d’accompagnement étroitement associé au manuscrit, tel que documents non contemporains ou fragments reliés avec le manuscrit à une époque antérieure.


```xml
<accMat>Un formulaire des impôts datée 1947 était collé
  sur la derniere page; elle n’a pas été cataloguée
  séparémment. </accMat>
```


---

### 4. La description des manuscrits (pour aller plus loin)
## Historique du manuscrit

L’élément `<history>` rassemble les éléments servant à donner un historique complet du manuscrit&nbsp;:

* `<origin>`&nbsp;: informations sur l’origine du manuscrit
* `<acquisition>`&nbsp;: informations sur les modalités d’entrée du manuscrit dans l’institution qui le conserve, (etc.)
* `<provenance>`&nbsp;: informations sur un épisode précis de l’histoire du manuscrit, après sa création et avant son acquisition

`<origin>` est membre de la classe datable, d’où sont derivés les attributs normalisants `@notBefore`, `@notAfter`, `@when`, etc.

---

### 4. La description des manuscrits (pour aller plus loin)
## Exemple

```xml
<history>
    <origin notBefore="1750-01-01" notAfter="1750-12-31">
      <p>Reliure exécutée par Louis-François Le Monnier
      (signature), Paris, vers 1750 d’après <ref target="#bib01">Michon, 1956 (n° 38 (120)</ref> .</p>
    </origin>
    <provenance>Répertorié comme appartenant à l’abbé Untel
    en 1788.</provenance>
    <provenance>Vendu par Sothebys en 1820.</provenance>
    <acquisition notBefore="1833-12-31" notAfter="1848-01-31">Estampille
    n° 24, utilisée de 1833 à 1848</acquisition>
  </history>
```

---

### 4. La description des manuscrits (pour aller plus loin)
## Informations supplémentaires

L’élément `<additional>` regroupe&nbsp;:

* `<adminInfo>`&nbsp;: informations administratives
* `<surrogates>`&nbsp;: informations sur surrogates, e.g. photos, images numerisés, etc.
* `<listBibl>`&nbsp;: notices bibliographiques


---

### 4. La description des manuscrits (pour aller plus loin)
## Informations administratives

L’élément `<admininfo>` regroupe&nbsp;:

* `<recordHist>`&nbsp;: historique du record
* `<availability>`&nbsp;: disponibilité du manuscrit
* `<custHist>`&nbsp;: historique du manuscrit apres son acquisition
* `<note>`&nbsp;: d’autres remarques pertinentes

```xml
<adminInfo>
  <recordHist>
    <source>Record created <date>1 Aug 2004</date></source>
  </recordHist>
  <availability>
    <p>Le manuscrit original n’est plus accessible sauf sur presentation d’autorisation écrite. </p>
  </availability>
  <custodialHist>
    <custEvent type="restauration" notBefore="1961-03" notAfter="1961-03">
      <p>Tentative de restauration de reliure mars 1961 à la bibliothèque municipale de Lyon. </p>
    </custEvent>
    <custEvent type="numerisation" notBefore="1988-05-01" notAfter="1988-05-30">
      <p>Numérisation complète en mode images par Arkhênum mai 1988.</p>
    </custEvent>
  </custodialHist>
</adminInfo>
```


---

### 4. La description des manuscrits (pour aller plus loin)
## Et pour en finir...

Un `<msDesc>` peut en contenir un autre, balisé comme `<msPart>`, dans le cas où des manuscrits d’origine distincts ont été combiné pour faire un manuscrit composé.

```xml
<msDesc>
    <msIdentifier>
      <settlement>Amiens</settlement>
      <repository>Bibliothèque Municipale</repository>
      <idno>MS 3</idno>
      <msName>Bible Maurdramnus</msName>
    </msIdentifier>
    <!-- ... -->
    <msPart>
      <altIdentifier>
        <idno>MS 6</idno>
      </altIdentifier>
      <!-- ... -->
    </msPart>
    <msPart>
      <altIdentifier>
        <idno>MS 7</idno>
      </altIdentifier>
      <!-- ...  -->
    </msPart>
    <!-- d’autre msParts ... -->
  </msDesc>
```

---

### 4. La description des manuscrits (pour aller plus loin)
## Trois approches pour l’enregistrement et l’**alignement** des variantes

Les Guidelines proposent trois approches différentes pour aligner des passages textuels lorsque l’on établit une édition critique&nbsp;:

* la **méthode de localisation référencée**, où les entrées d’apparat critique sont liées aux blocs de texte identifiés qui contiennent les lemmes respectifs
* la **méthode d’attachement à double point**, où les entrées d’apparat critique sont liées à des points de départ et de fin identifiés dans un texte
* la **méthode de segmentation parallèle**, où les entrées d’apparat critique son encodées au moyen d’une transcription du texte connu invariable et de tous les témoins.

???

La méthode par segmentation parallèle est le plus couramment utilisée lors de l’encodage de sources en XML-TEI pour comparer des témoins. Cette méthode correspond également à une méthode de travail pour l’établissement du texte. Mais son emploi, qui présente une certain nombre de limites, est sujet à discussion.

---

### 4. La description des manuscrits (pour aller plus loin)
## Segmentation parallèle

* `<app>` entrée d’apparat critique
* `<lem>` lemme ou leçon retenue du texte
* `<rdg>` variante (lecture)

```xml
<app xmlns="http://www.tei-c.org/ns/Examples">
  <lem>remener</lem>
  <rdg wit="#l-1-C #l-1-D #l-1-E #l-1-F">remettre</rdg>
  <rdg wit="#l-#-a">conduire dehors</rdg>
</app>
```

---

### 4. La description des manuscrits (pour aller plus loin)
## Variantes

* `<rdgGrp>` pour regrouper plusieurs variantes ayant un lien entre elles
* `@type` pour catégoriser la variante
* `@cause` pour expliciter la cause de la variante

---

### 4. La description des manuscrits (pour aller plus loin)
## Tableau de tradition

```xml
<listWit xmlns="http://www.tei-c.org/ns/Examples">
  <witness xml:id="A">
    <msDesc>
      <msIdentifier>
        <country>France</country>
        <settlement>Paris</settlement>
        <repository>Archives nationales</repository>
        <collection>Monuments ecclésiastiques</collection>
        <idno>S 2364 n° 5</idno>
      </msIdentifier>
    </msDesc>
  </witness>
  <witness xml:id="B">
    <msDesc><!-- ... --></msDesc>
  </witness>
  <!-- répéter l’élément witness autant de fois que de témoins -->
</listWit>
```

---

### 4. La description des manuscrits (pour aller plus loin)
## Localisation référencée

```xml
<div xmlns="http://www.tei-c.org/ns/Examples" type="alignmentText" xml:id="cAlignmentText">
  <linkGrp>
    <link target="#c1Front #c2Front"></link>
    <link target="#c1FrontFr #c2FrontFr02"></link>
    <link target="#c1FrontFr01 #c2FrontFr01"></link>
    <link target="#c1FrontFr01.p001 #c2FrontFr01.p001"></link>
    <!-- ... -->
  </linkGrp>
</div>
```

---

## Orientations bibliographiques

* Glorieux, Frédéric, et Jolivet, Vincent, [« weboai, Human web interface on OAI repository »](http://weboai.sourceforge.net), SourceForge.
* [DeMArch Description des manuscrits et fonds d’archives modernes et contemporains en bibliothèque](http://www.bnf.fr/fr/professionnels/normes_catalogage/a.ead_demarch.html).
* Hawkins, Kevin, Dalmau, Michelle, et Bauman, Syd, [Best Practices for TEI in Libraries](http://www.tei-c.org/SIG/Libraries/teiinlibraries/main-driver.html).
* Lou Burnard ed., [The ENRICH Schema – A Reference Guide](http://projects.oucs.ox.ac.uk/ENRICH/).
* Driscoll. "P5-MS: A General Purpose Tagset for Manuscript Description." Digital Medievalist 1 (2006). [http://www.digitalmedievalist.org/journal/2.1/driscoll/](http://www.digitalmedievalist.org/journal/2.1/driscoll/) (accessed February 23, 2014).
