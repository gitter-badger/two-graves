<?xml version='1.0'?>
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
  xmlns:t="http://docbook.org/xslt/ns/template" version="2.0"
  xmlns:m="http://docbook.org/xslt/ns/mode" xmlns="http://www.w3.org/1999/xhtml"
  xmlns:db="http://docbook.org/ns/docbook" xmlns:tmpl="http://docbook.org/xslt/titlepage-templates"
  xmlns:f="http://docbook.org/xslt/ns/extension" xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:xlink='http://www.w3.org/1999/xlink'
  xmlns:mp="http://docbook.org/xslt/ns/mode/private"
  xmlns:h="http://www.w3.org/1999/xhtml"
  xmlns:usrfn="http://docbook.org/xslt/ns/user-extension"

  exclude-result-prefixes="t xsl m db tmpl f xs usrfn mp xlink">

  <xsl:import href="docbook-xslt2-2.0.10-rwdalpe/xslt/base/html/final-pass.xsl" 
/>

  <xsl:param name="section.autolabel.max.depth" select="0" />
  <xsl:param name="generate.index" select="0"/>
  <xsl:param name="glossterm.auto.link" select="1" />
  <xsl:param name="glossary.sort" select="1" />
  <xsl:param name="autolabel.elements">
    <db:appendix format="A" />
    <db:figure />
    <db:example />
    <db:table />
    <db:equation />
    <db:part format="I" />
    <db:reference format="I" />
    <db:preface />
    <db:qandadiv />
    <db:refsection />
  </xsl:param>
  <xsl:param name="NOW" select="current-dateTime()" />
  <xsl:param name="project-name" select="''"/>
  <xsl:param name="book-name" select="''"/>

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

  <!-- BEGIN TEMPORARY WORKAROUND FOR ISSUE https://github.com/rwdalpe/two-graves/issues/6 -->
  <xsl:template match="db:informalfigure">
    <xsl:if test="./db:mediaobject">
      <xsl:apply-templates mode="m:mediafixer"/>
    </xsl:if>
  </xsl:template>

  <xsl:template match="db:informalfigure/db:mediaobject" mode="m:mediafixer">
    <xsl:variable name="id" select="../@xml:id"/>
    <xsl:variable name="role" select="../@role" />
    <xsl:variable name="thisobj" as="element()+">
      <xsl:copy>
        <xsl:attribute name="xml:id" select="$id" />
        <xsl:attribute name="role" select="$role" />
        <xsl:apply-templates select="@*|node()" mode="m:identity" />
      </xsl:copy>
    </xsl:variable>
    <xsl:apply-templates select="$thisobj" />
  </xsl:template>

  <xsl:template match="db:textobject" mode="m:identity"/>

  <xsl:template match="@*|node()" mode="m:identity">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()" mode="m:identity" />
    </xsl:copy>
  </xsl:template>
  <!--  END TEMPORARY WORKAROUND FOR ISSUE https://github.com/rwdalpe/two-graves/issues/6 -->

  <xsl:template match="db:mediaobject[@role='rotated-image' and @xlink:href]">
    <a href="{@xlink:href}">
      <xsl:apply-imports/>
    </a>
  </xsl:template>

  <xsl:template match="db:printhistory" mode="m:titlepage-mode">
    <div>
      <xsl:sequence select="f:html-attributes(.)" />
      <xsl:apply-templates />
    </div>
  </xsl:template>

  <xsl:template match="db:index">
    <xsl:copy/>
  </xsl:template>
  
  <xsl:template match="db:index" mode="mp:toc"/>
  
  <xsl:function name="usrfn:is-acceptable-mediaobject" as="xs:integer">
    <xsl:param name="object" as="element()*" />

    <xsl:choose>
      <xsl:when test="$object/@role = 'hires'">0</xsl:when>
      <xsl:otherwise>1</xsl:otherwise>
    </xsl:choose>
  </xsl:function>

  <xsl:template match="db:cover[@role]" mode="m:titlepage-mode">
    <div class="{@role}">
      <xsl:apply-templates select="node()" />
    </div>
  </xsl:template>

  <xsl:template match="db:cover[@role]" mode="m:titlepage-template">
    <xsl:param name="context" as="element()" required="yes" />
    <xsl:param name="content" as="element()*" required="yes" />
    <xsl:param name="mode" as="xs:string" required="yes" />

    <xsl:apply-templates
      select="$content[node-name(.) = node-name(current()) and ./@role = current()/@role]"
      mode="m:titlepage-content">
      <xsl:with-param name="context" select="$context" />
      <xsl:with-param name="template" select="." />
      <xsl:with-param name="mode" select="$mode" />
    </xsl:apply-templates>
  </xsl:template>
  
  <xsl:template match="db:book/db:info/db:releaseinfo" mode="m:titlepage-mode">
    <p>
      <xsl:sequence select="f:html-attributes(.,('releaseinfo-web'))" />
      You may also read this book in PDF and EPUB format from the 
      <a href="https://github.com/rwdalpe/{$project-name}/releases">releases page</a>.
    </p>
    <p>
      <xsl:sequence select="f:html-attributes(.,('releaseinfo-print'))" />
        You may also read this book online at 
        <a href="https://rwdalpe.github.io/{$project-name}/{$book-name}">https://rwdalpe.github.io/<xsl:value-of select="$project-name"/>/<xsl:value-of select="$book-name"/></a> and in EPUB format from the 
        <a href="https://github.com/rwdalpe/{$project-name}/releases">releases page</a>.
    </p>
  </xsl:template>
  
  <xsl:template match="db:set|db:book|db:part|db:reference">
    <article>
      <xsl:sequence select="f:html-attributes(.,f:node-id(.))" />
      <xsl:call-template name="t:titlepage" />
  
      <xsl:if test="not(db:toc)">
        <!-- only generate a toc automatically if there's no explicit toc -->
        <xsl:apply-templates select="." mode="m:toc" />
      </xsl:if>
  
      <xsl:apply-templates />
      <xsl:apply-templates select="..//db:cover[@role = 'back-cover']" mode="m:titlepage-mode" />
    </article>
  </xsl:template>

  <xsl:function name="f:html-attributes" as="attribute()*">
    <xsl:param name="node" as="element()" />
    <xsl:param name="special-classes" as="xs:string*"/>

    <xsl:variable name="class"
      select="if (local-name($node) = $omit-names-from-class)
                                     then ()
                                     else local-name($node)" />

    <xsl:variable name="extra-classes"
      select="(if ($node/@role)
                         then string($node/@role)
                         else (),
                         if ($node/@revision)
                         then concat('rf-', $node/@revision)
                         else (),
                         if ($special-classes)
                         then ($special-classes)
                         else ())" />

    <xsl:sequence
      select="f:html-attributes($node, $node/@xml:id, $class, $extra-classes, $node/@h:*)" />
  </xsl:function>

  <xsl:template name="t:user-titlepage-templates" as="element(tmpl:templates-list)?">
    <tmpl:templates-list>
      <tmpl:templates name="book">
        <tmpl:recto>
          <db:cover role="front-cover"/>
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


