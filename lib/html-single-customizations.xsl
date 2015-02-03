<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:import href="docbook-xsl-ns-1.78.1/html/docbook.xsl" />

  <xsl:template name="system.head.content">
    <meta name="viewport" content="initial-scale=1" />
  </xsl:template>

  <xsl:template name="part.titlepage.before.recto">
    <xsl:variable name="top-anchor">
      <xsl:call-template name="object.id">
        <xsl:with-param name="object" select="/*[1]" />
      </xsl:call-template>
    </xsl:variable>

    <p class="returntotop">
      <a href="#{$top-anchor}">
        <xsl:text>Return to top</xsl:text>
      </a>
    </p>
  </xsl:template>

  <xsl:template name="chapter.titlepage.before.recto">
    <xsl:variable name="top-anchor">
      <xsl:call-template name="object.id">
        <xsl:with-param name="object" select="parent::*" />
      </xsl:call-template>
    </xsl:variable>

    <p class="returntotop">
      <a href="#{$top-anchor}">
        <xsl:text>Return to part TOC</xsl:text>
      </a>
    </p>
  </xsl:template>

  <xsl:template name="section.titlepage.before.recto">
    <xsl:variable name="level">
      <xsl:call-template name="section.level" />
    </xsl:variable>
    <xsl:if test="$level &lt; 2">
      <xsl:variable name="top-anchor">
        <xsl:call-template name="object.id">
          <xsl:with-param name="object" select="parent::*" />
        </xsl:call-template>
      </xsl:variable>

      <p class="returntotop">
        <a href="#{$top-anchor}">
          <xsl:text>Return to chapter TOC</xsl:text>
        </a>
      </p>
    </xsl:if>
  </xsl:template>
  
  <xsl:template name="glossary.titlepage.before.recto">
    <xsl:variable name="top-anchor">
      <xsl:call-template name="object.id">
        <xsl:with-param name="object" select="/*[1]" />
      </xsl:call-template>
    </xsl:variable>

    <p class="returntotop">
      <a href="#{$top-anchor}">
        <xsl:text>Return to top</xsl:text>
      </a>
    </p>
  </xsl:template>
  
  <xsl:template name="appendix.titlepage.before.recto">
    <xsl:variable name="top-anchor">
      <xsl:call-template name="object.id">
        <xsl:with-param name="object" select="/*[1]" />
      </xsl:call-template>
    </xsl:variable>

    <p class="returntotop">
      <a href="#{$top-anchor}">
        <xsl:text>Return to top</xsl:text>
      </a>
    </p>
  </xsl:template>
</xsl:stylesheet>


