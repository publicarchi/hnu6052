<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns:teix="http://www.tei-c.org/ns/Examples"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="tei teix xsl" 
    xpath-default-namespace="http://www.tei-c.org/ns/1.0">
    
    
    <xsl:import href="/Applications/oxygen/frameworks/tei/xml/tei/stylesheet/markdown/markdown-to-tei.xsl"/>
    <xsl:param name="input-uri"
        select="/Users/emmanuelchateau/publicarchi/hnu6502/docs/00-introducti.md"/>
    
    <xsl:template match="/">
        <xsl:call-template name="main"/>
    </xsl:template>
    
</xsl:stylesheet>