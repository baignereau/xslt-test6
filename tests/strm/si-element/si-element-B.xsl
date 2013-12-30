<xsl:transform version="3.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:map="http://www.w3.org/2005/xpath-functions/map"
    xmlns:err="http://www.w3.org/2005/xqt-errors"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="map xs err">
    
    <xsl:variable name="RUN" select="true()" static="yes"/>
    <xsl:strip-space elements="*"/>
    
  <xsl:import-schema schema-location="../docs/loans.xsd"/>  
   
  <!-- within xsl:stream, use xsl:element: schema-aware, validation=strict -->
  
  <xsl:template name="cy-101" use-when="$RUN">
    <out>
      <xsl:stream href="../docs/loans-noNS.xml">
        <xsl:variable name="copy">
          <xsl:element name="{name(.)}" namespace="{namespace-uri(.)}" validation="strict">
            <xsl:copy-of select="child::node()"/>
          </xsl:element>
        </xsl:variable>
        <xsl:value-of select="$copy/* instance of element(*, myroot)"/>
      </xsl:stream>
    </out>
  </xsl:template>
  
  <!-- within xsl:stream, use xsl:element: schema-aware, validation=lax -->
  
  <xsl:template name="cy-102" use-when="$RUN">
    <out>
      <xsl:stream href="../docs/loans-noNS.xml">
        <xsl:variable name="copy">
          <xsl:element name="{name(.)}" namespace="{namespace-uri(.)}" validation="lax">
            <xsl:copy-of select="child::node()"/>
          </xsl:element>
        </xsl:variable>
        <xsl:value-of select="$copy/* instance of element(*, myroot)"/>
      </xsl:stream>
    </out>
  </xsl:template>
  
  <!-- within xsl:stream, use xsl:element: schema-aware, validation=strip -->
  
  <xsl:template name="cy-103" use-when="$RUN">
    <out>
      <xsl:stream href="../docs/loans-noNS.xml">
        <xsl:variable name="copy">
          <xsl:element name="{name(.)}" namespace="{namespace-uri(.)}" validation="strip">
            <xsl:copy-of select="child::node()"/>
          </xsl:element>
        </xsl:variable>
        <xsl:value-of select="$copy/* instance of element(*, myroot)"/>
      </xsl:stream>
    </out>
  </xsl:template>
  
  <!-- within xsl:stream, use xsl:element: schema-aware, validation=preserve -->
  
  <xsl:template name="cy-104" use-when="$RUN">
    <out>
      <xsl:stream href="../docs/loans-noNS.xml">
        <xsl:variable name="copy">
          <xsl:element name="{name(.)}" namespace="{namespace-uri(.)}" validation="preserve">
            <xsl:copy-of select="child::node()"/>
          </xsl:element>
        </xsl:variable>
        <xsl:value-of select="$copy/* instance of element(*, myroot)"/>
      </xsl:stream>
    </out>
  </xsl:template>  
  
  <!-- within xsl:stream, use xsl:element: schema-aware, validation by type -->
  
  <xsl:template name="cy-105" use-when="$RUN">
    <out>
      <xsl:stream href="../docs/loans-noNS.xml">
        <xsl:variable name="copy">
          <xsl:element name="{name(.)}" namespace="{namespace-uri(.)}" type="myroot">
            <xsl:copy-of select="child::node()"/>
          </xsl:element>
        </xsl:variable>
        <xsl:value-of select="$copy/* instance of element(*, myroot)"/>
      </xsl:stream>
    </out>
  </xsl:template>
  
  <!-- within xsl:stream, use xsl:element: schema-aware, validation=strict, no element declaration available -->
  
  <xsl:template name="cy-106" use-when="$RUN">
    <out>
      <xsl:stream href="../docs/loans.xml">
        <xsl:variable name="copy">
          <xsl:element name="{name(.)}" namespace="{namespace-uri(.)}" validation="strict">
            <xsl:copy-of select="child::node()"/>
          </xsl:element>
        </xsl:variable>
        <xsl:value-of select="$copy/* instance of element(*, myroot)"/>
      </xsl:stream>
    </out>
  </xsl:template>
  
  <!-- within xsl:stream, use xsl:element: schema-aware, validation=lax, no element declaration available -->
  
  <xsl:template name="cy-107" use-when="$RUN">
    <out>
      <xsl:stream href="../docs/loans.xml">
        <xsl:variable name="copy">
          <xsl:element name="{name(.)}" namespace="{namespace-uri(.)}" validation="lax">
            <xsl:copy-of select="child::node()"/>
          </xsl:element>
        </xsl:variable>
        <xsl:value-of select="$copy/* instance of element(*, myroot)"/>
      </xsl:stream>
    </out>
  </xsl:template> 
  
  <!-- within xsl:stream, use xsl:element: schema-aware, validation by type, invalid (wrong namespace) -->
  
  <xsl:template name="cy-108" use-when="$RUN">
    <out>
      <xsl:stream href="../docs/loans.xml">
        <xsl:variable name="copy">
          <xsl:element name="{name(.)}" namespace="{namespace-uri(.)}" validation="strict">
            <xsl:copy-of select="child::node()"/>
          </xsl:element>
        </xsl:variable>
        <xsl:value-of select="$copy/* instance of element(*, myroot)"/>
      </xsl:stream>
    </out>
  </xsl:template>
  
  <!-- within xsl:stream, use xsl:element: schema-aware, validation=strict, no element declaration available, caught -->
  
  <xsl:template name="cy-109" use-when="$RUN">
    <out>
      <xsl:stream href="../docs/loans.xml">
        <xsl:try>
          <xsl:element name="{name(.)}" namespace="{namespace-uri(.)}" validation="strict">
            <xsl:copy-of select="child::node()"/>
          </xsl:element>
          <xsl:catch errors="*">
            <xsl:value-of select="local-name-from-QName($err:code)"/>
          </xsl:catch>
        </xsl:try>
      </xsl:stream>
    </out>
  </xsl:template>
  
  <!-- within xsl:stream, use xsl:element: schema-aware, validation by type, invalid, caught -->
  
  <xsl:template name="cy-110" use-when="$RUN">
    <out>
      <xsl:stream href="../docs/loans.xml">
        <xsl:try>
          <xsl:element name="{name(.)}" namespace="{namespace-uri(.)}" type="myroot">
            <xsl:copy-of select="child::node()"/>
          </xsl:element>
          <xsl:catch errors="*">
            <xsl:value-of select="local-name-from-QName($err:code)"/>
          </xsl:catch>
        </xsl:try>
      </xsl:stream>
    </out>
  </xsl:template>
  
  <!-- within xsl:stream, use xsl:element: schema-aware, validation=strict, argument is consuming and grounded -->
  
  <xsl:template name="cy-111" use-when="$RUN">
    <out>
      <xsl:stream href="../docs/loans-noNS.xml">
        <xsl:variable name="copy" as="node()">
          <xsl:for-each select="copy-of(/*/*)">
            <xsl:element name="{name(.)}" namespace="{namespace-uri(.)}" validation="strict">
              <xsl:copy-of select="child::node()"/>
            </xsl:element>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="$copy instance of element(*, ACERequest)*"/>
      </xsl:stream>
    </out>
  </xsl:template>
  
  <!-- within xsl:stream, use xsl:element: schema-aware, validation=lax, argument is consuming and grounded -->
  
  <xsl:template name="cy-112" use-when="$RUN">
    <out>
      <xsl:stream href="../docs/loans-noNS.xml">
        <xsl:variable name="copy" as="node()">
          <xsl:for-each select="copy-of(/*/*)">
            <xsl:element name="{name(.)}" namespace="{namespace-uri(.)}" validation="lax">
              <xsl:copy-of select="child::node()"/>
            </xsl:element>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="$copy instance of element(*, ACERequest)"/>
      </xsl:stream>
    </out>
  </xsl:template>
  
  <!-- within xsl:stream, use xsl:element: schema-aware, validation=strip, argument is consuming and grounded -->
  
  <xsl:template name="cy-113" use-when="$RUN">
    <out>
      <xsl:stream href="../docs/loans-noNS.xml">
        <xsl:variable name="copy" as="node()">
          <xsl:for-each select="copy-of(/*/*)">
            <xsl:element name="{name(.)}" namespace="{namespace-uri(.)}" validation="strip">
              <xsl:copy-of select="child::node()"/>
            </xsl:element>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="$copy instance of element(*, ACERequest)"/>
      </xsl:stream>
    </out>
  </xsl:template>
  
  <!-- within xsl:stream, use xsl:element: schema-aware, validation=preserve, argument is consuming and grounded -->
  
  <xsl:template name="cy-114" use-when="$RUN">
    <out>
      <xsl:stream href="../docs/loans-noNS.xml">
        <xsl:variable name="copy" as="node()">
          <xsl:for-each select="copy-of(/*/*)">
            <xsl:element name="{name(.)}" namespace="{namespace-uri(.)}" validation="preserve">
              <xsl:copy-of select="child::node()"/>
            </xsl:element>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="$copy instance of element(*, ACERequest)"/>
      </xsl:stream>
    </out>
  </xsl:template>  
  
  <!-- within xsl:stream, use xsl:element: schema-aware, validation by type, argument is consuming and grounded -->
  
  <xsl:template name="cy-115" use-when="$RUN">
    <out>
      <xsl:stream href="../docs/loans-noNS.xml">
        <xsl:variable name="copy" as="node()">
          <xsl:for-each select="copy-of(/*/*)">
            <xsl:element name="{name(.)}" namespace="{namespace-uri(.)}" type="ACERequest">
              <xsl:copy-of select="child::node()"/>
            </xsl:element>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="$copy instance of element(*, ACERequest)"/>
      </xsl:stream>
    </out>
  </xsl:template>
  
  <!-- within xsl:stream, use xsl:element: schema-aware, validate attribute node by type, success -->
  
  <xsl:template name="cy-116" use-when="$RUN">
    <out>
      <xsl:stream href="../docs/loans-noNS.xml">
        <xsl:element name="{name(.)}" namespace="{namespace-uri(.)}" type="xs:decimal">
          <xsl:copy-of select="/*/*/@version"/> 
        </xsl:element>  
      </xsl:stream>
    </out>
  </xsl:template> 
  
  <!-- within xsl:stream, use xsl:element: schema-aware, validate attribute node by type, failure -->
  
  <xsl:template name="cy-117" use-when="$RUN">
    <out>
      <xsl:stream href="../docs/loans-noNS.xml">
        <xsl:element name="{name(.)}" namespace="{namespace-uri(.)}" type="xs:date">
          <xsl:copy-of select="/*/*/@version"/> 
        </xsl:element>  
      </xsl:stream>
    </out>
  </xsl:template>
  
<!-- within xsl:stream, use xsl:element: schema-aware, validation=strict, element node -->
  
  <xsl:template name="cy-121" use-when="$RUN">
    <out>
      <xsl:stream href="../docs/loans-noNS.xml">
        <xsl:variable name="copy" as="node()">
          <xsl:element name="{name(.)}" namespace="{namespace-uri(.)}" validation="strict">
            <xsl:copy-of select="child::node()"/>
          </xsl:element>
        </xsl:variable>
        <xsl:value-of select="$copy instance of element(*, myroot)"/>
      </xsl:stream>
    </out>
  </xsl:template>
  
  <!-- within xsl:stream, use xsl:element: schema-aware, validation=lax, element node -->
  
  <xsl:template name="cy-122" use-when="$RUN">
    <out>
      <xsl:stream href="../docs/loans-noNS.xml">
        <xsl:variable name="copy" as="node()">
          <xsl:element name="{name(.)}" namespace="{namespace-uri(.)}" validation="lax">
            <xsl:copy-of select="child::node()"/>
          </xsl:element>
        </xsl:variable>
        <xsl:value-of select="$copy instance of element(*, myroot)"/>
      </xsl:stream>
    </out>
  </xsl:template>
  
  <!-- within xsl:stream, use xsl:element: schema-aware, validation=strip, element node -->
  
  <xsl:template name="cy-123" use-when="$RUN">
    <out>
      <xsl:stream href="../docs/loans-noNS.xml">
        <xsl:variable name="copy" as="node()">
          <xsl:element name="{name(.)}" namespace="{namespace-uri(.)}" validation="strip">
            <xsl:copy-of select="child::node()"/>
          </xsl:element>
        </xsl:variable>
        <xsl:value-of select="$copy instance of element(*, myroot)"/>
      </xsl:stream>
    </out>
  </xsl:template>
  
  <!-- within xsl:stream, use xsl:element: schema-aware, validation=preserve, element node -->
  
  <xsl:template name="cy-124" use-when="$RUN">
    <out>
      <xsl:stream href="../docs/loans-noNS.xml">
        <xsl:variable name="copy" as="node()">
          <xsl:element name="{name(.)}" namespace="{namespace-uri(.)}" validation="preserve">
            <xsl:copy-of select="child::node()"/>
          </xsl:element>
        </xsl:variable>
        <xsl:value-of select="$copy instance of element(*, myroot)"/>
      </xsl:stream>
    </out>
  </xsl:template>  
  
  <!-- within xsl:stream, use xsl:element: schema-aware, validation by type, element node -->
  
  <xsl:template name="cy-125" use-when="$RUN">
    <out>
      <xsl:stream href="../docs/loans-noNS.xml">
        <xsl:variable name="copy" as="node()">
          <xsl:element name="{name(.)}" namespace="{namespace-uri(.)}" type="myroot">
            <xsl:copy-of select="child::node()"/>
          </xsl:element>
        </xsl:variable>
        <xsl:value-of select="$copy instance of element(*, myroot)"/>
      </xsl:stream>
    </out>
  </xsl:template>
  
  <!-- within xsl:stream, use xsl:element: schema-aware, validation=strict, element node, no element declaration available -->
  
  <xsl:template name="cy-126" use-when="$RUN">
    <out>
      <xsl:stream href="../docs/loans.xml">
        <xsl:variable name="copy" as="node()">
          <xsl:element name="{name(.)}" namespace="{namespace-uri(.)}" validation="strict">
            <xsl:copy-of select="child::node()"/>
          </xsl:element>
        </xsl:variable>
        <xsl:value-of select="$copy instance of element(*, myroot)"/>
      </xsl:stream>
    </out>
  </xsl:template>
  
  <!-- within xsl:stream, use xsl:element: schema-aware, validation=lax, element node, no element declaration available -->
  
  <xsl:template name="cy-127" use-when="$RUN">
    <out>
      <xsl:stream href="../docs/loans.xml">
        <xsl:variable name="copy" as="node()">
          <xsl:element name="{name(.)}" namespace="{namespace-uri(.)}" validation="lax">
            <xsl:copy-of select="child::node()"/>
          </xsl:element>
        </xsl:variable>
        <xsl:value-of select="$copy instance of element(*, myroot)"/>
      </xsl:stream>
    </out>
  </xsl:template> 
  
  <!-- within xsl:stream, use xsl:element: schema-aware, validation by type, element node, invalid (wrong namespace) -->
  
  <xsl:template name="cy-128" use-when="$RUN">
    <out>
      <xsl:stream href="../docs/loans.xml">
        <xsl:variable name="copy" as="node()">
          <xsl:element name="{name(.)}" namespace="{namespace-uri(.)}" validation="strict">
            <xsl:copy-of select="child::node()"/>
          </xsl:element>
        </xsl:variable>
        <xsl:value-of select="$copy instance of element(*, myroot)"/>
      </xsl:stream>
    </out>
  </xsl:template>    
   
  
  
</xsl:transform>  