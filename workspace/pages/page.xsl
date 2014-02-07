<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:include href="../utilities/master.xsl" />
<xsl:include href="../utilities/attached-images.xsl" />
<xsl:include href="../utilities/sharing.xsl" />

<xsl:template match="/data">
	<section id="page_single" class="content_single">
		<xsl:apply-templates select="page-single/entry" />
	</section>
	<div class="back_holder"><a href="{$root}">Home</a></div>
</xsl:template>

<xsl:template match="data" mode="page-title">
	<xsl:value-of select="concat(page-single/entry/page-title, ' | ', $website-name)" />
</xsl:template>

<xsl:template match="page-single/entry">
	<article class="entry single page">
		<header>
			<h2><xsl:value-of select="page-title" /></h2>
		</header>
		<xsl:apply-templates select="attached-images" />	
		<xsl:copy-of select="page-content/node()" />
				
		<footer>
			<div class="sharing">
				<xsl:call-template name="twitter-button">
					<xsl:with-param name="data-count" select="'horizontal'" />
					<xsl:with-param name="data-text" select="entry-title" />
				</xsl:call-template>
				<xsl:call-template name="facebook-like">
					<xsl:with-param name="url-to-like" select="$current-url" />
					<xsl:with-param name="font" select="'arial'" />
					<xsl:with-param name="width" select="275" />
				</xsl:call-template>
			</div>
		</footer>
	</article>
</xsl:template>

</xsl:stylesheet>