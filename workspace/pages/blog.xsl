<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:include href="../utilities/master.xsl" />
<xsl:include href="../utilities/pagination.xsl" />
<xsl:include href="../utilities/attached-images.xsl" />
<xsl:include href="../utilities/truncate.xsl" />

<xsl:template match="/data">
	<section id="entry_listing">
		<xsl:apply-templates select="entry-listing/entry" />
		<div id="pages">
			<xsl:call-template name="pagination">
				<xsl:with-param name="pagination" select="entry-listing/pagination" />
				<xsl:with-param name="pagination-url" select="concat($root, '/blog/$')" />
			</xsl:call-template>
		</div>
	</section>
</xsl:template>

<xsl:template match="entry-listing/entry">
	<article class="entry listed">
		<header>
			<h2><a href="{$root}/blog/view/{entry-title/@handle}" rel="permalink" title="Read article..."><xsl:value-of select="entry-title" /></a></h2>
			<div class="date">
				<xsl:call-template name="format-date">
					<xsl:with-param name="date" select="publish-date"/>
					<xsl:with-param name="format" select="'M x, Y'"/>
				</xsl:call-template>
			</div>
		</header>
		<xsl:apply-templates select="attached-images" />
		<p class="attn summary"><xsl:value-of select="entry-summary"/></p>
		<footer>
			<div class="entry_links">
				<a href="{$root}/blog/view/{entry-title/@handle}" rel="permalink" class="button">Keep Reading...</a>
			</div>
		</footer>
	</article>
</xsl:template>
	
</xsl:stylesheet>