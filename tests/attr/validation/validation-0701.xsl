<?xml version="1.0"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xsi:schemaLocation="http://www.w3.org/1999/XSL/Transform schema-for-xslt20.xsd" 
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  exclude-result-prefixes="xsi">


  <xsl:import-schema namespace="http://www.w3.org/1999/XSL/Transform"
    schema-location="schema-for-xslt20.xsd"/>

  <xsl:template match="/">
    <xsl:if test="not(* instance of schema-element(xsl:transform))">
      <xsl:message terminate="yes">Input document must be a schema-validated stylesheet</xsl:message>
    </xsl:if>
    <expressions>
      <xsl:apply-templates/>
    </expressions>
  </xsl:template>

  <xsl:template match="xsl:*" priority="2">
    <!-- match XSLT elements -->
    <xsl:apply-templates select="attribute(*, xsl:expression) except attribute(*, xsl:pattern)"/>
    <xsl:apply-templates select="attribute(*, xsl:avt)[matches(., '\{[^{]')]"/>
    <xsl:apply-templates/>
  </xsl:template>

  <xsl:template match="*" priority="1">
    <!-- match literal result elements -->
    <xsl:apply-templates select="@* except @xsl:*"/>
    <xsl:apply-templates/>
  </xsl:template>

  <xsl:template match="@*">
    <expression attribute="{name()}">
      <xsl:value-of select="."/>
    </expression>
  </xsl:template>

  <xsl:template match="text()"/>

</xsl:stylesheet>
