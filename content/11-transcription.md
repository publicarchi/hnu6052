## HNU3052/HNU6052 Humanités numériques : Introduction à l’édition critique avec la Text Encoding Initiative (TEI)

# Rudiments d’encodage des sources manuscrites

---

# Rudiments d’encodage des sources manuscrites

1. Macrostructure du texte et teiHeader
2. L’inscription du texte sur le support
3. Les corrections éditoriales

???

Une édition critique est un essai de restitution d’un texte. Ainsi que nous l’avons vu, chaque édition résulte d’un point de vue du le texte, c’est-à-dire de choix et de partis-pris raisonnés. Dans le domaine de la production de sources historiques, on pourra par exemple souhaiter rendre le plus fidèlement possible le documents tel qu’il se présente au lecteur (transcription diplomatique). Dans certains cas, la tradition du texte peut-être riche et il faudra trouver des solutions pour prendre en charge les différents états du texte et ses témoins. Enfin, dans le cas d’une édition dite de génétique textuel, on s’intéressera aux différents manuscrits en essayant de restituer la succession des actes d’écriture.

Lors de la transcription de sources primaires, on a donc besoin de pouvoir enregistrer des informations concernant la lecture du texte, ou d’ajouter des informations éditoriales telles que des notes d’édition critique ou des notes de commentaires historique, ou encore fournir des corrections et compléter des lacunes, par exemple.

La TEI présente de nombreux mécanismes spécialement destinés à la prise en charge de ces différentes sortes d’éditions critiques. Ici, la plus part des éléments qui nous intéressent sont compris dans les modules de transcription `transcr`, et d’autres dans celui de description des manuscrits `msdescription` que nous aborderons plus tard. Les éléments définis dans ces modules peuvent parfois être utilement augmentés par `certainty` pour traiter des niveaux de certitudes et `gaiji` pour la prise en charge des glyphes et la documentation des systèmes d’écriture. Mais aussi `Critical Apparatus` pour les notes de variantes, ainsi que des mécanismes de liage et d’alignement tirés du module `Linking`.

Ces différents éléments de la Text Encoding Initiative vous permettent de décrire aussi finement que de besoin les phénomènes textuels rencontrés ainsi que d’embarquer directement l’apparat critique de votre édition à l’intérieur du balisage.

Pour commencer, nous vous proposons de revoir rapidement la macrostructure du texte dans un document TEI avant d’examiner plus en détail les éléments spécialement dédiés à l’encodage des sources manuscrites.

---

## 1. Macrostructure du texte et teiHeader

---

### 1. Macrostructure du texte et teiHeader
## Composition d’un fichier TEI

```xml
<TEI xmlns="http://www.tei-c.org/​ns/​1.0">
  <teiHeader>
    <!-- métadonnées décrivant le texte -->
  </teiHeader>
  <text>
    <!-- représentation du texte lui-même -->
  </text>
</TEI>
```

* l’élément racine est `<TEI>`
* tous les éléments sont placés dans l’espace de nom de la TEI avec `xmlns`
* le document se compose d’au moins deux parties&nbsp;:
  * `<teiHeader>`
  * `<text>`


???

Tous les documents TEI reçoivent une organisation similaire&nbsp;:  L’élément racine (celui qui contient tous les autres) est un élément `<TEI>`, celui-ci est placé dans l’espace de nom TEI avec `xmlns`, ce qui signifie que tous les sous-éléments sont placés dans cet espace de nom par défaut.

Un document TEI se compose d’au moins deux parties&nbsp;:

* `<teiHeader>`
* `<text>`

---

### 1. Macrostructure du texte et teiHeader
## Macrostructures de texte composite

```xml
<text>
  <front><!-- ... --></front>
  <group>
    <text><!-- ... --></text>
    <text><!-- ... --></text>
    <text><!-- ... --></text>
  </group>
  <back><!-- ... --></back>
</text>
```

---

### 1. Macrostructure du texte et teiHeader
## teiCorpus

Dans le cas de corpus de textes hétérogènes, on utilisera des éléments `<teiCorpus>` comme élément racine comportant des éléments `<TEI>`

```xml
<teiCorpus xmlns="http://www.tei-c.org/​ns/​1.0">
  <TEI><!-- ... --></TEI>
  <TEI><!-- ... --></TEI>
</teiCorpus>
```

---

### 1. Macrostructure du texte et teiHeader
## teiHeader minimal

```xml
<TEI xmlns="http://www.tei-c.org/​ns/​1.0">
  <teiHeader>
    <fileDesc>
      <titleStmt>
        <title>The life and opinions of Tristram Shandy,
        Gentleman: TEI edition</title>
      </titleStmt>
      <publicationStmt>
        <publisher>Web Head Press</publisher>
        <date>2013</date>
      </publicationStmt>
      <sourceDesc>
        <p>Transcribed from the first edition, 1708</p>
      </sourceDesc>
    </fileDesc>
  </teiHeader>
</TEI>
```

???

Dans un élément TEI on trouve obligatoirement un élément `teiHeader`.

On y trouvera notamment un élément `<sourceDesc>` obligatoire qui décrit le texte que l’on édite. Cela peut être aussi un fichier nativement numérique. Nombreux autres éléments.

---

### 1. Macrostructure du texte et teiHeader
## Parties liminaires, postérieures

```xml
<TEI>
  <teiHeader>
    <!-- ... -->
  </teiHeader>
  <text>
    <front>
      <!-- parties liminaire -->
      <!-- (préfaces, introductions, en sous-éléments div) -->
    </front>
    <body>
      <!-- corps de texte, structuré en sous-éléments div -->
    </body>
    <back>
      <!-- parties postérieures -->
      <!-- (annexes et appendices dans des éléments div) -->
    </back>
  </text>
</TEI>
```

???

Après `<teiHeader>`, on trouve un élément `<text>` qui contiendra le cœur de votre texte, avec optionnellement un élément front qui contient parties liminaires, `<body>` qui contient le corps du texte, et `<back>` qui contient les annexes et les parties supplémentaires du texte.

Cette macrostructure peut-être plus compliquée en fonction de la nature des projets.

---

### 1. Macrostructure du texte et teiHeader
## Macrostructure du texte

* `<body>` corps de texte (fils de l’élément `<text>`)
* `<div>` division (fils de l’élément `<div>`, répétable)
* `<head>` titre d’une division (premier élément fils de `<div>`, optionnel)
* `<p>` paragraphe (fils de `<div>`, répétable)
* `<seg>` segment (fils de `<p>`, répétable)

---

### 1. Macrostructure du texte et teiHeader
## Macrostructure du texte

```xml
<text>
  <body>
    <div type="volume" xml:id="TS01">
      <div type="chapter" xml:id="TS0101">
        <head>Chap. I</head>
        <p>I wish either my father or my mother, or indeed both of them,
        as they were in duty both equally bound to it, had minded what
        they were about when they begot me; ...</p>
        <!-- reste du chapitre 1 -->
      </div>
      <div type="chapter" xml:id="TS0102">
        <head>Chap. II</head>
        <p> — Then, positively, there is nothing in the question, that I
        can see, either good or bad. — Then let me tell you, Sir, it
        was a very unseasonable question at least ...</p>
        <!-- reste du chapitre 2 -->
      </div>
      <!-- reste du volume 1 -->
    </div>
    <!-- les autres volumes -->
  </body>
</text>
```

---

### 1. Macrostructure du texte et teiHeader
## Structures de listes

```xml
<list>
  <label><!-- étiquette --></label>
  <item><!-- item de liste --></item>
  <label><!-- étiquette --></label>
  <item><!-- item de liste --></item>
  <!-- ... -->
</list>
```

---

### 1. Macrostructure du texte et teiHeader
## Structures versifiées

```xml
<body n="spleenEtIdeal">
  <div type="longPoem">
    <head>Les Phares</head>
    <lg type="stanza">
      <l n="1">Rubens, fleuve d’oubli, jardin de la paresse,</l>
      <l n="2">Oreiller de chair fraîche où l’on ne peut aimer,</l>
      <l n="3">Mais où la vie afflue et s’agite sans cesse,</l>
      <l n="4">Comme l’air dans le ciel et la mer dans la mer&nbsp;;</l>
    </lg>
    <lg type="stanza">
      <l n="5">Léonard de Vinci, miroir profond et sombre,</l>
      <l n="6">Où des anges charmants, avec un doux souris</l>
      <l n="7">Tout chargé de mystère, apparaissent à l’ombre</l>
      <l n="8">Des glaciers et des pins qui ferment leur pays&nbsp;;</l>
    </lg>
    <gap reason="sampling" quantity="9" unit="stanza"></gap>
  </div>
  <div type="shortPoem">
    <head>La Muse malade</head>
    <gap reason="sampling" quantity="4" unit="stanza"></gap>
  </div>
</body>
```

---

### 1. Macrostructure du texte et teiHeader
## Structures de tableaux

```xml
<table>
  <head><!-- titre --></head>
  <!-- rangée -->
  <row>
    <cell><!-- contenu cellule --></cell>
    <cell><!-- contenu cellule --></cell>
    <cell><!-- contenu cellule --></cell>
  </row>
  <!-- rangée -->
  <row>
    <cell><!-- contenu cellule --></cell>
    <cell><!-- contenu cellule --></cell>
  </row>
</table>
```

---

### 1. Macrostructure du texte et teiHeader
## Éléments d’usage courant

* `<hi>` mise en valeur
* `<quote>` citation
* `<foreign>` pour les passages en langue étrangère
* `<term>`, `<gloss>` termes et glodes
* `<date>` date
* `<name>`, `<persName>`, `<placeName>` noms, noms de personne, de lieu
* `<pb/>` indication des changements de page
* `<fw>` permet d’encoder un titre courant (en haut ou en bas de la page), une réclame ou une autre information comparable

---

### 1. Macrostructure du texte et teiHeader
## Attributs globaux (toujours disponibles)

* `@n` fournit un numéro ou un label (pas unique)
* `@rend` donne une indication sur l’apparence
* `xml:id` fournit un identifiant unique
* `xml:lang` indique la langue du contenu textuel de l’élément ([code langue ISO](http://www.iso.org/iso/fr/home/standards/language_codes.htm))

```xml
<div xml:lang="fre">
  <p>exemple de texte <foreign xml:lang="lat">ad hoc</foreign></p>
<div>
```

---

### 1. Macrostructure du texte et teiHeader
## Attributs fréquemment employés

* `@type` pour typer un élément
* `@target` lien interne
* `@ref` référence
* `@key` référence canonique

```xml
<div type="preface">
  <p>exemple de texte<p>
</div>
```

---

### 1. Macrostructure du texte et teiHeader
## Éléments de type milestone

Désignent un point dans le flux textuel. Des éléments XML vides.

* `<pb/>` saut de page
* `<cb/>` saut de colonne
* `<lb/>` saut de ligne
* `<milestone/>` élément borne permettant de délimiter une partie section de texte selon un autre système que les divisions
* `<anchor>` élément ancre

---

### 1. Macrostructure du texte et teiHeader
## Structures complexes

* `<addSpan>` partie de texte ajouté, avec `@spanTo` qui pointe vers une cible
* `<anchor>` ancre avec `@xml:id`

```xml
<delSpan spanTo="#endDel" change="#L3"></delSpan>
<metamark function="flag" target="#zone-1" change="#L2">lege
</metamark><zone xml:id="zone-1" change="#L1">Ock en schullen
de bruwere des hilgen dages nicht over setten noch uppe den
stillen fridach bruwen.</zone><addSpan spanTo="#endDel"
change="#L2"></addSpan>
<zone>Noch nymande over setten, se en sehin denne erst, dat
uppe den bonen neyn stro noch, huw noch flaß ligghe, by eyner
halven roden, deme bruwere so wol alse dem bruwheren
to murende.</zone><anchor xml:id="endDel"/>
```

---

## 2. L’inscription du texte sur le support

---

### 2. L’inscription du texte sur le support
## Prise en charge des lacunes

`<gap>` passage ne pouvant pas être restitué pour des raisons matérielles

```xml
<gap reason="illegible" agent="ink-blot"/>
```

`<unclear>` passage en partie illisible

```xml
<unclear agent="ink-blot" cert="low" resp="#EC">bas</unclear>
```

`<supplied>` restitution d’un passage manquant

```xml
<supplied reason="hole" source="#autreEd">les</supplied>
```

???

Lors de la transcription de sources primaires, on peut avoir besoin d’enregistrer des informations concernant la lecture du texte.

Ne pas confondre `<gap>` et `<space>` qui sert à désigner un espace blanc jugé significatif

Plusieurs attributs issus du module `certainty` qui peuvent vous permettre de préciser le niveau de certitude des restitutions.

```xml
<space  quantity="1" unit="cm"/>
```

---

### 2. L’inscription du texte sur le support
## Ajouts et surplus

`<add>` texte ajouté

```xml
<add place="above">nous</add>
```

`<del>` texte supprimé

```xml
<del rend="overstrike">claustra</del>
```

???

### `<subst>` substitutions (génétique textuelle)

```xml
<subst xmlns="http://www.tei-c.org/ns/Examples">
  <del>claustra</del>
  <add place="margin">fenêtre</add>
</subst>
```

---

### 2. L’inscription du texte sur le support
## La description des mains

* `@hand` dans le corps du texte `<body>`
* `handDesc` et ses sous-éléments dans le `<teiHeader>`

```xml
<handDesc xmlns="http://www.tei-c.org/ns/Examples">
  <handNote xml:id="c2Hand1" scope="major">à l’encre noire</handNote>
  <handNote xml:id="c2Hand2" scope="minor">au crayon</handNote>
</handDesc>
```

handNote est répétable et peut contenir une localisation avec `@locus`.

```xml
<p>Du texte <add hand="#c2Hand2">ajout</add> etc.</p>
```

---

## 3. Les corrections éditoriales

---

### 3. Les corrections éditoriales
## Passages fautifs

* `<sic>` passage fautif, ou segment syntaxiquement incorrect
* `<orig>` texte original
* `<corr>` correction de l’éditeur
* utilisation de `<choice>`

```xml
<choice xmlns="http://www.tei-c.org/ns/Examples">
  <orig>colomne</orig>
  <reg>colonne</reg>
</choice>
```

???

La même utilisation de `<choice>` est possible pour les segments syntaxiquement incorrects.

```xml
<choice xmlns="http://www.tei-c.org/ns/Examples">
  <sic>charbone</sic>
  <corr>charbon</corr>
</choice>
```

Partout, les attributs `@cert`, `@resp` et `@source` peuvent s’avérer utile.

---

### 3. Les corrections éditoriales
## Abréviations

* `<abbr>` abréviation
* `<expan>` abréviation développée

```xml
<abbr xmlns="http://www.tei-c.org/ns/Examples">Mtr.</abbr>
```

```xml
<expan xmlns="http://www.tei-c.org/ns/Examples">Maître</expan>
```

```xml
<choice xmlns="http://www.tei-c.org/ns/Examples">
  <abbr>Mtr.</abbr>
  <expan>Maître</expan>
</choice>
```

???

En soi, l’écriture manuscrite est souvent sujette à l’emploi d’abréviation pour abréger le travail scripteur. On y trouve communément des lettres ou groupes de lettres ou des phrases qui peuvent être représentés par des marques significatives. Ces phénomènes sont tellement répandus qu’elles sont difficiles à classifier. En fonction des besoins d’une édition, il est possible d’encoder ces abréviations de diverses manières afin de rendre compte plus ou moins finement de leur nature.

La manière la plus simple de signaler la présence d’une abréviation dans le texte consiste à utiliser les éléments `<abbr>` et `<expan>` qui permettent tantôt de renseigner la forme abrégée ou la forme développée. Appariées avec `<choice>`, on peut fournir une alternative.

---

### 3. Les corrections éditoriales
## Abréviations

```xml
<abbr xmlns="http://www.tei-c.org/ns/Examples">
  <am>
    <g ref="#b-per"/>
  </am>sone
</abbr>
```

```xml
<expan xmlns="http://www.tei-c.org/ns/Examples">
  <ex>per</ex>sone
</expan>
```

```xml
<choice xmlns="http://www.tei-c.org/ns/Examples">
  <am>
    <g ref="#b-per"/>
  </am>
  <ex>per</ex>
</choice>
```
