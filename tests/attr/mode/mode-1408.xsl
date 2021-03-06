<?xml version="1.0"?> 

<!-- mode-onnomatch002s -->
<!-- Michael Kay -->
<!-- on-no-match="text-only-copy" with streaming --> 

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  exclude-result-prefixes="xs">
 
  <xsl:mode name="s" on-no-match="text-only-copy" streamable="yes"/>
  
  <xsl:template match="chtitle" mode="s">
    <xsl:value-of select="upper-case(.)"/>
  </xsl:template>
   
</xsl:stylesheet>