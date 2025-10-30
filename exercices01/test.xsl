<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  version="2.0" 
  xpath-default-namespace="http://www.tei-c.org/ns/1.0"
  xmlns="http://www.w3.org/1999/xhtml">
  
  <xsl:output method="html" version="5.0" encoding="UTF-8"/>
  <xsl:strip-space elements="*"/>
  
  <xsl:template match="/">
    <html>
      <header>
        <title><xsl:value-of select="/TEI/teiHeader/fileDesc/titleStmt/title[@type='main']"/></title>
      </header>
      <body>
        <xsl:apply-templates select="/TEI/text"/>
      </body>
    </html>
  </xsl:template>
  
  <xsl:template match="abbr"/>
  
  <xsl:template match="p">
    <p><xsl:apply-templates/></p>
  </xsl:template>
</xsl:stylesheet>