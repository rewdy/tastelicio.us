<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="month-to-text">
	<xsl:param name="month" />
	
	<xsl:choose>
		<xsl:when test="$month = 01">January </xsl:when>
		<xsl:when test="$month = 02">February </xsl:when>
		<xsl:when test="$month = 03">March </xsl:when>
		<xsl:when test="$month = 04">April </xsl:when>
		<xsl:when test="$month = 05">May </xsl:when>
		<xsl:when test="$month = 06">June </xsl:when>
		<xsl:when test="$month = 07">July </xsl:when>
		<xsl:when test="$month = 08">August </xsl:when>
		<xsl:when test="$month = 09">September </xsl:when>
		<xsl:when test="$month = 10">October </xsl:when>
		<xsl:when test="$month = 11">November </xsl:when>
		<xsl:when test="$month = 12">December </xsl:when>
	</xsl:choose>	
</xsl:template>

</xsl:stylesheet>