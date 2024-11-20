<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0" expand-text="true">
    <xsl:template name="header">
        <xsl:param name="meta" as="map(*)"/>
        <xsl:param name="content" as="map(*)"/>
        
        <head>
            <meta charset="utf-8" />
            <title>{$meta?title}</title>
            <meta name="viewport" content="width=device-width,initial-scale=1" />
            
            <!-- Métadonnées -->
            <meta name="description" content="{$meta?description}" />
            
            <!-- Gif transparent le plus petit qui soit, évite une requête inutile vers le serveur (et une erreur dans la console). -->
            <link rel="icon" href="data:;base64,iVBORw0KGgo="/>
            
            <!-- Feuilles de style -->
            <!-- Général -->
            <link rel="stylesheet" href="style/general/reset.css" />
            <link rel="stylesheet" href="style/general/variables.css" />
            <link rel="stylesheet" href="style/general/global.css" />
            <!-- Polices -->
            <link rel="stylesheet" href="fonts/overused-grotesk/overused-grotesk.css" />
            <!-- Dispositions de page -->
            <link rel="stylesheet" href="style/layout/page-layout.css" />
            <!-- Composants -->
            <link rel="stylesheet" href="style/components/prose.css" />
            <link rel="stylesheet" href="style/components/conteneur-diapositives.css" />
            
            <!-- Styleguide (demo only) -->
            <link rel="stylesheet" href="style/components/styleguide.css" />
            
            <link rel="stylesheet" href="lib/reveal.js-5.0.3/dist/reveal.css" />
            <link rel="stylesheet" href="style/components/theme.reveal.css" />
        </head>
    </xsl:template>
</xsl:stylesheet>
