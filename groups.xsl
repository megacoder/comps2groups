<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output omit-xml-declaration="yes"/>

  <xsl:template match="/entities">
    <xsl:apply-templates/>
  </xsl:template>

  <xsl:template match="entity">
    <xsl:comment>
      <xsl:text> </xsl:text>
      <xsl:value-of select="desc"/>
      <xsl:text> </xsl:text>
    </xsl:comment>
    <xsl:text disable-output-escaping="yes">&lt;!ENTITY</xsl:text>
    <xsl:text> </xsl:text>
    <xsl:value-of select="concat(' ', @name,' &quot;',text,'&quot;')"/>
    <xsl:text disable-output-escaping="yes">&gt;</xsl:text>
  </xsl:template>
</xsl:stylesheet>
