<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:db="http://docbook.org/ns/docbook" version="1.0"
  exclude-result-prefixes="xsl db">

  <xsl:import href="docbook-xsl-ns-1.78.1/epub3/chunk.xsl" />

  <!-- Exclude mediaobjects from EPUB output -->
  <xsl:template match="db:mediaobject|db:imageobject|db:imagedata" />
</xsl:stylesheet>
