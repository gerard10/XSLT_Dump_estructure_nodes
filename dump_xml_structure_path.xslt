<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method='text'/>

<xsl:variable name='newline'><xsl:text>
</xsl:text></xsl:variable>
<xsl:template match="/">
			<xsl:apply-templates/>
</xsl:template>
<xsl:template match="*">
	<xsl:param name="parent"/>
	<xsl:value-of select="concat( $parent , '/', local-name())"/>
	<xsl:apply-templates select="@*"/>
	<xsl:value-of select="$newline" />
	<xsl:apply-templates select="*">
		<xsl:with-param name="parent"
						select="concat( $parent , '/', local-name())"/>
	</xsl:apply-templates>
</xsl:template>
<xsl:template match="@*">
	<xsl:value-of select="concat('[@',local-name(),'=',.,']')"/>
</xsl:template>
</xsl:stylesheet>
