<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs"
    xmlns="http://www.w3.org/1999/xhtml" 
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    version="2.0">

    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>
                    <xsl:value-of select="/TEI/teiHeader/fileDesc/titleStmt/title"/>
                </title>
            </head>
            <body>
                <h1>Mon document</h1>
                <p>titre : <xsl:value-of select="/TEI/teiHeader/fileDesc/titleStmt/title"/></p>
                <div>
                    <xsl:apply-templates/>
                </div>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="p">
        <p><xsl:apply-templates/></p>
    </xsl:template>
    
    <xsl:template match="g">
        <span class="glyph"/>
    </xsl:template>
    
    <xsl:template match="orig"/>

</xsl:stylesheet>
