<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:t="http://docbook.org/xslt/ns/template"
  version="2.0" exclude-result-prefixes="t xsl">

  <xsl:import href="docbook-xslt2-2.0.7-rwdalpe/xslt/base/html/final-pass.xsl" />

  <xsl:param name="section.autolabel.max.depth" select="0" />

  <xsl:template name="t:user-head-content">
    <xsl:param name="node" select="." />
    <meta xmlns="http://www.w3.org/1999/xhtml" name="viewport" content="initial-scale=1" />
  </xsl:template>
</xsl:stylesheet>


