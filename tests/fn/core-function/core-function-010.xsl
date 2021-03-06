<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

<?spec fo#func-translate?>
  <!-- Purpose: Test of 'translate()' function with 'translate()' as an
       argument.  Each of the three string arguments of the outer 'translate' 
       are generated by a call to another to 'translate' function.  -->

<xsl:template match="doc">
 <out>
   <xsl:value-of select="translate(translate('old string','old string','old string'),translate('123','123','old'),translate('123','123','new'))"/>
 </out>
</xsl:template>
</xsl:stylesheet>