<?xml version="1.0" encoding="UTF-8"?>
<xslt:transform xmlns:my="http://www.example.com/ns/match/var"
   xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xslt="http://www.w3.org/1999/XSL/Transform"
   exclude-result-prefixes="my xs" version="2.0">
   <!-- Purpose: Test of template matching with schema-attribute($name) where $name has a prefix.-->

   <xslt:import-schema namespace="http://www.example.com/ns/match/var"
      schema-location="variousTypesSchemaMatch.xsd"/>

   <xslt:template match="/">
      <out>
         <xslt:apply-templates select="//@*"/>
      </out>
   </xslt:template>

   <xslt:template match="schema-attribute(my:specialPart)">
      <xslt:element name="A">
         <xslt:value-of select="."/>
      </xslt:element>
   </xslt:template>

   <xslt:template match="schema-attribute(my:listParts)">
      <xslt:element name="B">
         <xslt:value-of select="."/>
      </xslt:element>
   </xslt:template>

   <xslt:template match="schema-attribute(my:colors)">
      <xslt:element name="C">
         <xslt:value-of select="."/>
      </xslt:element>
   </xslt:template>

   <xslt:template match="schema-attribute(my:count)">
      <xslt:element name="D">
         <xslt:value-of select="."/>
      </xslt:element>
   </xslt:template>

   <xslt:template match="attribute(*)"> </xslt:template>
</xslt:transform>
