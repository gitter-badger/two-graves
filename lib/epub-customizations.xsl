<?xml version="1.0" encoding="UTF-8"?>
<!--
Copyright (C) 2014 Robert Winslow Dalpe

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:db="http://docbook.org/ns/docbook" xmlns:t="http://nwalsh.com/docbook/xsl/template/1.0"
  xmlns:date="http://exslt.org/dates-and-times" version="1.0"
  xmlns:xlink='http://www.w3.org/1999/xlink'
  xmlns:m="http://docbook.org/xslt/ns/mode"
  xmlns:saxon="http://icl.com/saxon"
  xmlns:exslt="http://exslt.org/common"
  xmlns="http://www.w3.org/1999/xhtml" exclude-result-prefixes="xsl db t date xlink m saxon exslt">

  <xsl:import href="docbook-xsl-ns-1.78.1/epub3/chunk.xsl" />
  <xsl:import href="epub-titlepage.xsl" />

  <xsl:param name="NOW" select="date:date-time()" />

  <!-- BEGIN TEMPORARY WORKAROUND FOR ISSUE https://github.com/rwdalpe/two-graves/issues/6 -->
  <xsl:template match="db:informalfigure">
    <xsl:if test="./db:mediaobject">
      <xsl:apply-templates mode="m:mediafixer"/>
    </xsl:if>
  </xsl:template>

  <xsl:template match="db:informalfigure/db:mediaobject" mode="m:mediafixer">
    <xsl:variable name="id" select="../@xml:id"/>
    <xsl:variable name="role" select="../@role" />
    <xsl:variable name="thisobj">
      <xsl:copy>
        <xsl:apply-templates select="@*|node()" mode="m:identity" />
        <xsl:if test="$id != ''"><xsl:attribute name="xml:id" ><xsl:value-of select="$id"/></xsl:attribute></xsl:if>
        <xsl:if test="$role != ''"><xsl:attribute name="role" ><xsl:value-of select="$role"/></xsl:attribute></xsl:if>
        <xsl:if test="@xlink:href"><xsl:attribute name="xlink:href"><xsl:value-of select="saxon:tokenize(./@xlink:href, '/')[last()]"/></xsl:attribute></xsl:if>
      </xsl:copy>
    </xsl:variable>
    <xsl:message><xsl:copy-of select="$thisobj"/></xsl:message>
    <xsl:apply-templates select="exslt:node-set($thisobj)" />
  </xsl:template>

  <xsl:template match="db:imagedata" mode="m:identity">
    <xsl:copy>
      <xsl:apply-templates select="@*|node" mode="m:identity"/>
      <xsl:attribute name="fileref">
        <xsl:choose>
          <xsl:when test="../../@xlink:href">
            <xsl:value-of select="saxon:tokenize(../../@xlink:href, '/')[last()]"/>
          </xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="saxon:tokenize(@fileref, '/')[last()]"/>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:attribute>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="db:textobject" mode="m:identity"/>

  <xsl:template match="@*|node()" mode="m:identity">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()" mode="m:identity" />
    </xsl:copy>
  </xsl:template>
  <!--  END TEMPORARY WORKAROUND FOR ISSUE https://github.com/rwdalpe/two-graves/issues/6 -->
  
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
  
  <xsl:template match="db:index">
    <xsl:copy/>
  </xsl:template>

  <xsl:template match="db:index" mode="toc"/>  
  <xsl:template match="db:index" mode="ncx"/>
  <xsl:template match="db:index" mode="package.manifest"/>
</xsl:stylesheet>
