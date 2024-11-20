<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0" expand-text="true">
    <xsl:template name="layout">
        <xsl:param name="meta" as="map(*)"/>
        <xsl:param name="content" as="map(*)"/>
        
        <html lang="fr-FR">
            
            <xsl:call-template name="header">
                <xsl:with-param name="meta" select="$meta" as="map(*)"/>
                <xsl:with-param name="content" select="$content" as="map(*)"/>
            </xsl:call-template>
            
            <body>
                <!-- .page-layout pourrait être appliqué sur le body (ici c'est pour le guide) -->
                <div class="page-layout">
                    
                    <xsl:call-template name="head">
                        <xsl:with-param name="meta" select="$meta" as="map(*)"/>
                        <xsl:with-param name="content" select="$meta" as="map(*)"/>
                    </xsl:call-template>
                    
                    <main class="page-layout__main">
                        <div class="page-layout__infra">
                             
                        </div>
                        <div class="page-layout__content">
                            <article class="page-layout__content">
                                <xsl:apply-templates/>
                            </article>
                        </div>
                        
                        <div class="page-layout__extra">
                             
                        </div>
                    </main>
                        
                <xsl:call-template name="footer">
                    <xsl:with-param name="meta" select="$meta" as="map(*)"/>
                    <xsl:with-param name="content" select="$content" as="map(*)"/>
                </xsl:call-template>
                        
                <!-- Scripts -->
                <script src="lib/reveal.js-5.0.3/dist/reveal.js"></script>
                <script src="scripts/diapositives.js"></script>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>