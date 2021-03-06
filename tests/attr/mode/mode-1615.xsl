<?xml version="1.0"?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0" default-mode="a">
    
    <!-- PURPOSE:  Test attribute default-mode on nested elements. -->
    <xsl:template match="/" mode="#unnamed a">
        <out xsl:default-mode="a">
            <xsl:apply-templates select="doc/a"/>
        </out>
    </xsl:template>
    
    <xsl:template match="a">
        <xsl:text>mode-a:</xsl:text>
        <xsl:value-of select="."/>
    </xsl:template>
    
    <xsl:template match="a" mode="#unnamed">
        <xsl:text>no-mode:</xsl:text>
        <xsl:value-of select="."/>
    </xsl:template>
    
</xsl:stylesheet>
