<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

<?spec xslt#attribute-value-templates?>
    <!-- Purpose: Evaluation of boolean expression in AVT, surrounded by fixed strings. -->

<xsl:template match="doc">
  <out z="Before{starts-with(@a,@b)}After"/>
</xsl:template>

</xsl:stylesheet>