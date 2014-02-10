<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:include href="../utilities/master.xsl" />
<xsl:include href="../utilities/attached-images.xsl" />
<xsl:include href="../utilities/sharing.xsl" />

<xsl:template match="/data">
	<xsl:apply-templates select="page-single/entry" />

	<p><a href="{$root}" class="home-link"><i class="fa fa-home"></i> Home</a></p>
</xsl:template>

<xsl:template match="data" mode="page-title">
	<xsl:value-of select="concat(page-single/entry/page-title, ' | ', $website-name)" />
</xsl:template>

<xsl:template match="page-single/entry">
	<article class="page">
		
		<xsl:apply-templates select="attached-images" />

		<h1><xsl:value-of select="page-title" /></h1>

		<xsl:copy-of select="page-content/node()" />
		
		<xsl:call-template name="sharing">
			<xsl:with-param name="title" select="page-title"/>
		</xsl:call-template>

	</article>
</xsl:template>

</xsl:stylesheet>