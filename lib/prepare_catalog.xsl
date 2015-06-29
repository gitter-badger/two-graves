<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:catalog="urn:oasis:names:tc:entity:xmlns:xml:catalog">

  <xsl:param name="local-catalog-baseurl" select="'./'" />

  <xsl:template match="@*|node()">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()" />
    </xsl:copy>
  </xsl:template>

  <xsl:template match="//catalog:group[@id='local-catalog']/@xml:base">
    <xsl:attribute name="xml:base">
      <xsl:value-of select="$local-catalog-baseurl" />
    </xsl:attribute>
  </xsl:template>
</xsl:stylesheet>