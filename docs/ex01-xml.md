+++
author = "Antoine"
title = "04 - Exercice sur le balisage XML"
date = "2022-02-02"
description = "Exercice sur le balisage XML pour vous exercer à comprendre la logique du balisage."
seance1 = "oui"
+++
## Est-ce que les éléments suivants sont bien formés ?

### 1. `<segment>du texte</segment>`

{{< details "Oui" >}}
✔ Bonne réponse, la balise `<segment>` s'ouvre et se referme en suivant les règles syntaxiques de XML. La balise ouvrante est encadrée par des chevrons ouvrant et fermant, tandis que la balise fermante commence par la séquence de charactères `</`et se termine par un chevron fermant. Les noms d’éléments sont bien appariés.
{{< /details >}}

{{< details "Non" >}}
× Vous êtes sûr·e ? Pourtant la balise `<segment>` s'ouvre et se referme.
{{< /details >}}

---

### 2. `<segment><article>du</article><nom>texte</nom></segment>`

{{< details "Oui" >}}
✔ Oui cette syntaxe respecte les contraintes du langage XML. L’élément `<segment>` contient deux éléments fils, `<article>` et `<nom>`. Chaque élément ouvrant est bien fermé et les noms sont appariés.
{{< /details >}}

{{< details "Non" >}}
× Cette syntaxe est valide.
{{< /details >}}

---

### 3. `<segment><article>du <nom></article> texte</nom></segment>`

{{< details "Oui" >}}
× Non il y a une erreur ici, puisque l'élément `nom` est enfant de l'élément `article`, l'élément `nom` doit se refermer avant `article` pour éviter les chevauchements.
{{< /details >}}

{{< details "Non" >}}
✔ Effectivement il y a une erreur ici, puisque des éléments _se croisent_ : l'élément enfant doit se refermer avant son élément parent.
{{< /details >}}

---

### 4. `<segment type="text">du texte</segment>`
{{< details "Oui" >}}
✔ Cette syntaxe est correcte ! L’attribut est placé dans la balise ouvrante, il prend la forme clef-valeur le nom de l’attribut est séparé de sa valeur par un `=` et la valeur est fournie entre guillemets.
{{< /details >}}

{{< details "Non" >}}
× Pourtant il ne manque rien ici, cette syntaxe est juste.
{{< /details >}}

---

### 5. `<segment type='text'>du texte</segment>`
{{< details "Oui" >}}
✔ Tout à fait, la valeur d'un attribut peut être encadrées/entourées de guillemets simples `'text'` ou doubles `"text"`, du moment qu’ils sont appariés.
{{< /details >}}

{{< details "Non" >}}
× Les guillemets simples peuvent être utilisées pour définir la valeur d'un attribut, cette syntaxe est donc correcte.
{{< /details >}}

---

### 6. `<segment type=text>du texte</segment>`
{{< details "Oui" >}}
× Attention, le langage XML ne comprend la valeur de l'attribut que si celle-ci est entourée de guillemets simples `'` ou doubles `"`, ici `text` aurait dû être indiqué ainsi : `type="text"`.
{{< /details >}}

{{< details "Non" >}}
✔ La valeur de l'attribut doit être entourée de guillemets simples `'` ou doubles `"`.
{{< /details >}}

---

### 7. `<segment type="text">du texte<segment/>`
{{< details "Oui" >}}
× Cette fois la valeur de l'attribut est bien entourée de guillemets, mais par contre l'élément fermant a une mauvaise syntaxe, c'est `</segment>` et non `<segment/>`. En réalité ici, le premier élément `<segment>`contient du texte et un élément fils `<segment>` qui est auto-fermant. L’élément segment englobant n’est pas fermé.
{{< /details >}}

{{< details "Non" >}}
✔ Oui tout à fait, l'élément `<segment/>` correspond à un élément vide, alors qu'il y a un élément `segment` qui s’ouvre sans être fermé.
{{< /details >}}

---

### 8. `<segment type="text">du texte<lacune/></segment>`
{{< details "Oui" >}}
✔ La balise `<lacune/>` est un élément vide, il peut apparaître ainsi. Il est équivalent à `<lacune></lacune>`
{{< /details >}}

{{< details "Non" >}}
× Attention, ce n'est pas parce que l'élément `<lacune>` est seul qu'il est faux, s'il est vide et donc qu'il finit par `/` alors le balisage est juste.
{{< /details >}}

---

### 9. `<segment type="text">du texte< /segment>`
{{< details "Oui" >}}
× Attention, les espaces sont importants dans la syntaxe des balises XML, il fallait écrire `</segment>` plutôt que `< /segment>`.
{{< /details >}}

{{< details "Non" >}}
✔ Effectivement il y a une erreur ici, il y a un espace de trop entre `<` et `/` dans `< /segment>`.
{{< /details >}}

---

### 10. `<segment type="text">du texte</Segment>`
{{< details "Oui" >}}
× Non, le langage XML est sensible à la casse, ici `segment` est différent de `Segment`. Les balises ne sont pas appariées.
{{< /details >}}

{{< details "Non" >}}
✔ Tout à fait, le langage XML étant sensible à la casse, `segment` est différent de `Segment`, il s'agit de deux _éléments_ différents.
{{< /details >}}

---

### 11. `<segment type="text" type="toto">du texte</segment>`
{{< details "Oui" >}}
× Non, attention un attribut peut avoir plusieurs valeurs mais il ne peut pas y avoir plusieurs attributs identiques, il fallait donc écrire `<segment type="text toto">du texte</segment>`.
{{< /details >}}

{{< details "Non" >}}
✔ Tout à fait, un attribut peut avoir plusieurs valeurs, mais il ne peut pas y avoir plusieurs attributs identiques pour un même élément.
{{< /details >}}
