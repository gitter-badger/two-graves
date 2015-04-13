<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:t="http://docbook.org/xslt/ns/template" version="2.0"
  xmlns:m="http://docbook.org/xslt/ns/mode" xmlns="http://www.w3.org/1999/xhtml"
  xmlns:db="http://docbook.org/ns/docbook" xmlns:tmpl="http://docbook.org/xslt/titlepage-templates"
  xmlns:f="http://docbook.org/xslt/ns/extension" xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:usrfn="http://docbook.org/xslt/ns/user-extension"

  exclude-result-prefixes="t xsl m db tmpl f xs usrfn">

  <xsl:import href="docbook-xslt2-2.0.7-rwdalpe/xslt/base/html/final-pass.xsl" />

  <xsl:param name="section.autolabel.max.depth" select="0" />
  <xsl:param name="NOW" select="current-dateTime()" />

  <xsl:template name="t:user-head-content">
    <xsl:param name="node" select="." />
    <meta xmlns="http://www.w3.org/1999/xhtml" name="viewport" content="initial-scale=1" />
  </xsl:template>

  <xsl:template name="pi.dbtimestamp">
    <xsl:if test="$NOW "></xsl:if>
    <xsl:value-of
      select="format-dateTime(xs:dateTime($NOW), '[Y0001]-[M01]-[D01] [H01]:[m01] [ZN]')" />
  </xsl:template>

  <xsl:template match="processing-instruction('dbtimestamp')">
    <xsl:call-template name="pi.dbtimestamp" />
  </xsl:template>

  <xsl:template match="processing-instruction()" mode="m:titlepage-mode">
    <xsl:apply-templates select="." />
  </xsl:template>

  <xsl:template match="db:pubdate" mode="m:titlepage-recto-mode">
    <div class="pubdate-container">
      <p>
        Last modified on
        <span class="pubdate">
          <xsl:apply-templates select="." mode="m:titlepage-mode" />
        </span>
      </p>
    </div>
  </xsl:template>

  <xsl:template match="db:printhistory" mode="m:titlepage-mode">
    <div>
      <xsl:sequence select="f:html-attributes(.)" />
      <xsl:apply-templates />
    </div>
  </xsl:template>

  <xsl:function name="usrfn:is-acceptable-mediaobject" as="xs:integer">
    <xsl:param name="object" as="element()" />

    <xsl:choose>
      <xsl:when test="$object/@role = 'hires'">
        0
      </xsl:when>
      <xsl:otherwise>
        1
      </xsl:otherwise>
    </xsl:choose>
  </xsl:function>

  <xsl:template name="t:user-titlepage-templates" as="element(tmpl:templates-list)?">
    <tmpl:templates-list>
      <tmpl:templates name="book">
        <tmpl:recto>
          <header tmpl:class="titlepage">
            <db:title />
            <db:subtitle />
            <db:corpauthor />
            <db:authorgroup />
            <db:author />
            <db:editor />
            <db:othercredit />
            <div class="bottom-matter">
              <db:releaseinfo />
              <db:copyright />
              <db:legalnotice />
              <db:pubdate />
              <db:printhistory />
              <db:revision />
              <db:revhistory />
            </div>
            <db:abstract />
          </header>
          <hr tmpl:keep="true" />
        </tmpl:recto>
      </tmpl:templates>
    </tmpl:templates-list>
  </xsl:template>
</xsl:stylesheet>


