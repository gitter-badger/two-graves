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