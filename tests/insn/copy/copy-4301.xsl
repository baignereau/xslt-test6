<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<!-- Generated by NiceXSL 2.0.4 at Fri Apr 23 15:11:09 BST 2004 -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
version="2.0">
    <xsl:template match="/">
        <root>
            <xsl:variable name="a-doc">
                <a-root/>
            </xsl:variable>
            <xsl:copy-of select="$a-doc"/>
            <xsl:apply-templates select="$a-doc" mode="test"/>
        </root>
    </xsl:template>
    <xsl:template match="/ | node()" mode="test">
        <xsl:copy/>
    </xsl:template>
</xsl:stylesheet>
