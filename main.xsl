<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema" 
  xmlns:file="http://expath.org/ns/file" 
  xmlns:xi="http://www.w3.org/2001/XInclude" 
  xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
  xmlns:fct="factoton" 
  xpath-default-namespace="http://www.tei-c.org/ns/1.0" 
  exclude-result-prefixes="#all" 
  version="3.0">
  <xd:doc scope="stylesheet">
    <xd:desc>
      <xd:p>Factoton’s renderer exemple with xsl template</xd:p>
    </xd:desc>
  </xd:doc>
  
  <xsl:output method="xhtml" html-version="5.0" include-content-type="no" omit-xml-declaration="yes" exclude-result-prefixes="#all" encoding="UTF-8" indent="yes"/>
  <xsl:strip-space elements="*"/>
  
  <xsl:variable name="contentPath" select="'./xml/00-introduction.xml'"/>
  <xsl:variable name="xsltPath" select="'./xsl/tei2slides.xsl'"/>
  <xsl:variable name="buildPath" select="'/Users/emmanuelchateau/publicarchi/hnu6052/build/'"/>
  
  <xsl:template name="xsl:initial-template">
    <xsl:result-document>
      <xsl:value-of select="fct:generate(
        $contentPath,
        $xsltPath)"/>
    </xsl:result-document>
  </xsl:template>
  
  <xsl:function name="fct:generate" as="item()*">
    <xsl:param name="source" as="xs:string" />
    <xsl:param name="xsl" as="xs:string"/>
    <xsl:variable name="result" select="transform(
      map{
      'stylesheet-location' : $xsl,
      'source-node' : doc($source)
      })?output"/>
    <xsl:sequence select="file:write($buildPath || 'index.html', $result)"/>
  </xsl:function>
  
</xsl:stylesheet>