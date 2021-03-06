<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
  xmlns="http://testguys.com/" xmlns:ped="http://www.test.com/">

  <!-- Purpose: Use xsl:element with namespace attribute; prefix known at stylesheet level; default set. -->

  <xsl:template match="doc">
    <out>
      <xsl:element name="inner" namespace="http://www.test.com/">
        <yyy/>
      </xsl:element>
    </out>
  </xsl:template>

  <xsl:template match="text()"/>

</xsl:stylesheet>
