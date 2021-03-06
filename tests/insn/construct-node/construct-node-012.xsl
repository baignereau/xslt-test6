<?xml version="1.0" encoding="UTF-8"?>
<t:transform xmlns:t="http://www.w3.org/1999/XSL/Transform" version="2.0">
<!-- Purpose: Test of the default separator (Single space if using select or zero-length 
  				string when the content is specified using sequence constructor) on an 
  				xsl:value of for creating text nodes.  -->

   <t:output method="xml" encoding="UTF-8" indent="no"/>

   <t:template match="doc">
  		  <out>
         <t:value-of> 
  				      <t:sequence select="1 to 5"/>
			      </t:value-of>
         <t:text> </t:text>
         <t:value-of select="2 to 6"/>
      </out>
	  </t:template>
</t:transform>
