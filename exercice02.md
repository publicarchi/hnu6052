Bonjour à Toutes et à Tous,

Toutes mes excuses d’avoir tardé à vous revenir concernant les instructions pour le deuxième exercice.

Ainsi que je l’avais expliqué en cours, l’objet de cet exercice consiste à poursuivre l’encodage débuté en cours. Il s’agit notamment de :

- traiter l’inscription du texte sur le support (questions et réponses, actes d’écriture)
- compléter votre entête TEI avec des informations sur l’édition
- décrire la source manuscrite de cette édition
- documenter les mains dans l’entête TEI
- fournir une analyse diplomatique avec @ana et la décrire dans l’entête TEI

Afin de travailler plus facilement, vous pouvez utiliser le schéma `schemaMs.rng` fourni dans le dossier `schemas`. Vous trouverez des inscription pour associer le schéma avec Oxygen à cette adresse : https://www.oxygenxml.com/doc/versions/27.0/ug-editor/topics/associating-schema-directly.html

Le type de schéma à utiliser est « Relax NG ». Votre document devrait commencer par quelque chose du type : 

```
<?xml version="1.0" encoding="UTF-8"?>
<?xml-model href="../schemas/schemaMs.odd.rng" type="application/xml" schematypens="http://relaxng.org/ns/structure/1.0"?>
<TEI xmlns="http://www.tei-c.org/ns/1.0">
  <teiHeader>
  <!-- ... -->
  </teiHeader>
  <!-- ... -->
</TEI>
```

Merci beaucoup pour votre participation à cet atelier. Au plaisir de retrouver celles et ceux qui sont inscrit·e·s dans le cours avancé.

Bien cordialement,

Emmanuel