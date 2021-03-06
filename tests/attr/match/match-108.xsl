<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:xs="http://www.w3.org/2001/XMLSchema"
exclude-result-prefixes="xs">

  <!-- Test of pattern matching of parentless element node, using explicit child axis -->

<xsl:variable name="t1" as="element()">
  <xsl:element name="a">elem_a_value</xsl:element>
</xsl:variable>

<xsl:variable name="pi1" as="processing-instruction()">
  <xsl:processing-instruction name="pi">PI_data</xsl:processing-instruction>
</xsl:variable>

<xsl:variable name="pi2" as="processing-instruction()">
  <xsl:processing-instruction name="anotherpi">another_PI_data</xsl:processing-instruction>
</xsl:variable>

<xsl:variable name="comm1" as="comment()">
  <xsl:comment>This is the 1st comment</xsl:comment>
</xsl:variable>

<xsl:variable name="txt1" as="text()">
  <xsl:text>text-in-doc</xsl:text>
</xsl:variable>

<xsl:variable name="att1" as="attribute()">
  <xsl:attribute name="my_att">att-value</xsl:attribute>
</xsl:variable>

<xsl:template match="doc">
<out>
	<xsl:apply-templates select="$t1"/>
	<xsl:apply-templates select="$pi1"/>
	<xsl:apply-templates select="$pi2"/>
	<xsl:apply-templates select="$comm1"/>
  	<xsl:apply-templates select="$txt1"/>
  	<xsl:apply-templates select="$att1"/>
</out>
</xsl:template>

<xsl:template match="child::*">
<t>
	<xsl:text>match-with-childaxis:</xsl:text><xsl:value-of select="string(.)"/>
</t>
</xsl:template>


</xsl:stylesheet>
