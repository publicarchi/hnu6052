<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema" 
  xmlns:xi="http://www.w3.org/2001/XInclude" 
  xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
  xmlns:fct="factoton"
  xpath-default-namespace="http://www.tei-c.org/ns/1.0" 
  exclude-result-prefixes="#all" 
  version="3.0"
  expand-text="true">
  <!--<xsl:output method="xhtml" html-version="5.0" include-content-type="no" omit-xml-declaration="yes" exclude-result-prefixes="#all" encoding="UTF-8" indent="yes"/>
    --><xsl:strip-space elements="*"/>
  
  <!-- lib importation -->
  <!--<xsl:import href="lib/article2html.xsl"/>-->
  
  <!-- components importation -->
  <!-- @quest would it be possible to automatize importation ? -->
  <xsl:import href="../components/layout.xsl"/>
  <xsl:import href="../components/head.xsl"/>
  <xsl:import href="../components/header.xsl"/>
  <xsl:import href="../components/footer.xsl"/>
  
  <xsl:output method="xhtml" html-version="5.0" include-content-type="no" omit-xml-declaration="yes" exclude-result-prefixes="#all" encoding="UTF-8" indent="yes" />
  <xsl:strip-space elements="*" />
  
  <xsl:mode on-no-match="shallow-copy"/>
  <xsl:template match="processing-instruction() | comment()"/>
  
  <!-- @todo path should be created dynamically -->
  <xsl:variable name="cssPath" select="'css/normalize.css', 'css/main.css'" />
  <xsl:variable name="jsPath" select="'js/script.js'" />
  
  <!-- @todo deal with title, description and meta with a function for different file types -->
  <xsl:variable name="meta" as="map(*)">
    <xsl:map>
      <xsl:map-entry key="'title'" select="'Test de titre'"/>
      <xsl:map-entry key="'subTitle'" select="'Test de sous-titre'"/>
      <xsl:map-entry key="'DOI'" select="'wwww.eee'"/>
      <xsl:map-entry key="'description'" select="'Ceci est un exemple de description'"/>
      <xsl:map-entry key="'authors'">
        <persName>
          <forename>Emmanuel</forename>
          <surname>Château-Dutier</surname>
        </persName>
      </xsl:map-entry>
      <!-- @todo test TEI content and typed based templating -->
    </xsl:map>
  </xsl:variable>
  <xsl:variable name="content" as="map(*)">
    <xsl:map></xsl:map>
  </xsl:variable>
  
  <xsl:template match="teiHeader"/>
  <xsl:template match="/TEI">
    
    <xsl:call-template name="layout">
      <xsl:with-param name="meta" select="$meta"/>
      <xsl:with-param name="content" select="$content"/>
    </xsl:call-template>
  </xsl:template>
  
  <xsl:template match="text">
    <xsl:apply-templates/>
  </xsl:template>
  
  <xsl:template match="front"/>
  <xsl:template match="body">
    <div class="prose">
        
        <div data-diapositive="seulement" data-state="centered">
          <h1 id="bienvenue">Bienvenue</h1>
          <p>Ceci est une documentation bimodale <br/>(prose + diapositives)</p>
        </div>
        
        <xsl:apply-templates />
    </div>
  </xsl:template>
  
  <xsl:template match="graphic">
    <figure>
      <img src="{@url}"/>
      <figcaption><xsl:apply-templates select="desc"/></figcaption>
    </figure>
  </xsl:template>
  
  <xsl:template match="div">
    <div>
      <xsl:variable name="level" select="count(ancestor-or-self::div)" />
      <xsl:attribute name="class" select="@type"/>
      <xsl:for-each select="head">
        <xsl:element name="h{$level}">
          <xsl:apply-templates select="@*"/>
          <xsl:apply-templates/>
        </xsl:element>
      </xsl:for-each>
      <xsl:apply-templates select="node() except head"/>
    </div>
  </xsl:template>
  
  
  <xsl:template match="list">
    <ul><xsl:apply-templates/></ul>
  </xsl:template>
  <xsl:template match="item">
    <li><xsl:apply-templates/></li>
  </xsl:template>
  <xsl:template match="metamark">
    <hr/>
  </xsl:template>
  
  
  <xsl:template match="foreign">
    <em class="foreign"><xsl:apply-templates/></em>
  </xsl:template>
  <xsl:template match="soCalled">
    <em class="soCalled"><xsl:apply-templates/></em>
  </xsl:template>
  <xsl:template match="emph">
    <strong class="emph"><xsl:apply-templates/></strong>
  </xsl:template>
  <xsl:template match="quote">
    <blockquote><xsl:apply-templates/></blockquote>
  </xsl:template>
  <xsl:template match="q">
    <xsl:text>« </xsl:text>
    <em class="quote"><xsl:apply-templates/></em>
    <xsl:text> »</xsl:text>
  </xsl:template>
  <xsl:template match="p">
    <p><xsl:apply-templates/></p>
  </xsl:template>
  <xsl:template match="code">
    <code><xsl:apply-templates/></code>
  </xsl:template>
  <xsl:template match="ident">
    <strong class="ident"><xsl:apply-templates/></strong>
  </xsl:template>
  <xsl:template match="gi | tag">
    <code class="gi"><xsl:apply-templates/></code>
  </xsl:template>
  <xsl:template match="att">
    <code class="att">
      <xsl:text>@</xsl:text>
      <xsl:apply-templates/>
    </code>
  </xsl:template>
  <xsl:template match="ref">
    <a title="Lien" href="{@target}">
      <xsl:apply-templates/>
    </a>
  </xsl:template>
  <xsl:template match="hi[@rend='italic']">
    <em><xsl:apply-templates/></em>
  </xsl:template>
  <xsl:template match="hi[@rend='superscript']">
    <sup><xsl:apply-templates/></sup>
  </xsl:template>
  <xsl:template match="hi[@rend='bold']">
    <strong><xsl:apply-templates/></strong>
  </xsl:template>
</xsl:stylesheet>
