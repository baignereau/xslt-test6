<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:sf="http://streamable-functions"
    exclude-result-prefixes="sf xs"
    version="3.0">
    
    <xsl:mode streamable="yes" />
    
    <xsl:template match="/">
        <result>
            <xsl:copy-of select="doc/sf:deep-descent(.)/@index/string(.)" />
        </result>
    </xsl:template>
    
    <xsl:function name="sf:deep-descent" streamability="deep-descent" as="element()*">
        <xsl:param name="node" as="node()"/>
        <xsl:sequence select="$node//section" />
    </xsl:function>
</xsl:stylesheet>