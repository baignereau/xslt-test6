<xsl:package name="http://www.w3.org/xslt30tests/override-035" package-version="1.0.1" version="3.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:p="http://www.w3.org/xslt30tests/override-base-f-035" exclude-result-prefixes="xs p" expand-text="true">

  <xsl:use-package name="http://www.w3.org/xslt30tests/override-base-f-035" package-version="1.0.0">

    <xsl:override>
      <xsl:variable name="v"   select="6"/>
    </xsl:override>

  </xsl:use-package>
  
  <xsl:variable name="data" select="0 to 10"/>

  <xsl:template name="main" visibility="public">
    <out>{filter($data, p:f#1)}</out>
  </xsl:template>



</xsl:package>
