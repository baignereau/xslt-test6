<?xml version="1.0" encoding="UTF-8"?>
<!--It is a type error if the supplied value of a variable cannot be
                     converted to the required type.-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                version="2.0">

<?error XTTE0570?>



  <xsl:template name="main">
      <out>
        <xsl:variable name="x" select="'two'" as="xs:integer"/>
        <xsl:value-of select="$x"/>
      </out>
  </xsl:template>
  


</xsl:stylesheet>
