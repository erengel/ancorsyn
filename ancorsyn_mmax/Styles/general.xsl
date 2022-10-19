<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
  xmlns:mmax="org.eml.MMAX2.discourse.MMAX2DiscourseLoader" 
  xmlns:turn="http://www.eml.org/NameSpaces/turn"
  xmlns:section="http://www.eml.org/NameSpaces/section"
  xmlns:reference="http://www.eml.org/NameSpaces/reference"
  xmlns:edu="http://www.eml.org/NameSpaces/edu">

  <xsl:output method="text" indent="no" omit-xml-declaration="yes"/>
  <xsl:strip-space elements="*"/>

  <xsl:template match="word">
    <xsl:value-of select="mmax:registerDiscourseElement(@id)"/>
    <xsl:apply-templates select="mmax:getStartedMarkables(@id)" mode="opening"/>
    <xsl:value-of select="mmax:setDiscourseElementStart()"/>
    <xsl:apply-templates/>
    <xsl:value-of select="mmax:setDiscourseElementEnd()"/>
    <xsl:apply-templates select="mmax:getEndedMarkables(@id)" mode="closing"/>
    <xsl:text> </xsl:text>
  </xsl:template>
  
    <xsl:template match="section:markable" mode="opening">
    <xsl:text>
======================================================
</xsl:text>
    <xsl:choose>
      <xsl:when test="@id_topic">
        <xsl:value-of select="@id_topic"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:text>(no topic)</xsl:text>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:text>
======================================================

</xsl:text>
  </xsl:template>
  
  <xsl:template match="section:markable" mode="closing">
    <xsl:text>
</xsl:text>
  </xsl:template>

 
    <xsl:template match="turn:markable" mode="closing">
    <xsl:text>
</xsl:text>
  </xsl:template>
  
    
      <xsl:template match="turn:markable" mode="opening">
<xsl:value-of select="mmax:startBold()"/> 
<xsl:value-of select="@id_speaker"/>
<xsl:text>:
</xsl:text> 
<xsl:value-of select="mmax:endBold()"/>
  </xsl:template>
  

  <xsl:template match="reference:markable" mode="opening">
    <xsl:value-of select="mmax:addLeftMarkableHandle(@mmax_level, @id, '[ ')"/>
</xsl:template> 

<xsl:template match="reference:markable" mode="closing">
    <xsl:value-of select="mmax:addRightMarkableHandle(@mmax_level, @id, ' ]')"/>
    <xsl:value-of select="mmax:startSubscript()"/>
  <xsl:value-of select="@synrole"/>
  <xsl:value-of select="mmax:endSubscript()"/>
</xsl:template> 
  
  <xsl:template match="edu:markable" mode="closing">
    <xsl:text>
</xsl:text>
</xsl:template> 

<xsl:template match="edu:markable" mode="opening">

<xsl:value-of select="mmax:startBold()"/> 
   <xsl:value-of select="@n"/>
<xsl:value-of select="mmax:endBold()"/> 
<!-- <xsl:if test="mmax:startsMarkableFromLevel(@id, @mmax_level, 'turn')=false"> -->
   <xsl:text>	</xsl:text>
<!-- </xsl:if> -->
</xsl:template> 


</xsl:stylesheet>
