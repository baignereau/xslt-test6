<?xml version="1.0"?> 

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
     xmlns:a="http://a.uri/" xmlns:b="http://b.uri/">
     

  <xsl:template match="/">
    <xsl:element name="o">
      <xsl:copy-of select="doc/a:*"/>
    </xsl:element>
  </xsl:template>
 
</xsl:stylesheet>
