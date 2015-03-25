<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:db="http://docbook.org/ns/docbook" xmlns:t="http://nwalsh.com/docbook/xsl/template/1.0"
  xmlns:date="http://exslt.org/dates-and-times" version="1.0"
  xmlns="http://www.w3.org/1999/xhtml" exclude-result-prefixes="xsl db t date">

  <xsl:import href="docbook-xsl-ns-1.78.1/epub3/chunk.xsl" />
  <xsl:import href="epub-titlepage.xsl" />

  <xsl:param name="NOW" select="date:date-time()" />

  <!-- Exclude mediaobjects from EPUB output -->
  <xsl:template match="db:mediaobject|db:imageobject|db:imagedata" />
  <xsl:template match="db:pubdate" mode="book.titlepage.recto.mode">
    <p>
      Last modified on
    </p>
    <xsl:apply-templates select="." mode="titlepage.mode" />
  </xsl:template>

  <xsl:template name="pi.dbtimestamp">
    <xsl:call-template name="datetime.format">
      <xsl:with-param name="date" select="$NOW" />
      <xsl:with-param name="format" select="'Y-m-d H:M:S'" />
    </xsl:call-template>
  </xsl:template>
</xsl:stylesheet>
