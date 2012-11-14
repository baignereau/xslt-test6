<?xml version="1.0"?> 

<!-- mode-onnomatch007 -->
<!-- Michael Kay -->
<!-- on-no-match="shallow-skip" --> 

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  exclude-result-prefixes="xs">
 
  <xsl:mode name="s" on-no-match="shallow-skip"/>
  
  <xsl:template match="book|bktlong|bktshort" mode="s">
    <xsl:copy>
      <xsl:apply-templates mode="s"/>
    </xsl:copy>
  </xsl:template>
  

    
</xsl:stylesheet>