<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:include href="../utilities/master.xsl" />
<xsl:include href="../utilities/pagination.xsl" />
<xsl:include href="../utilities/attached-images.xsl" />
<xsl:include href="../utilities/truncate.xsl" />

<xsl:template match="/data">
	<section id="entry_listing">
		<h2>Archive for 
			<xsl:call-template name="month-to-text">
				<xsl:with-param name="month" select="$month" />
			</xsl:call-template> 
			<xsl:value-of select="$year"/>
		</h2>
		<xsl:apply-templates select="archive-entries/entry" />
		<div id="pages">
			<xsl:call-template name="pagination">
				<xsl:with-param name="pagination" select="archive-entries/pagination" />
				<xsl:with-param name="pagination-url" select="concat($root, '/blog/$')" />
			</xsl:call-template>
		</div>
	</section>
	<div class="back_holder"><a href="{$root}">Back to blog</a></div>
</xsl:template>

<xsl:template match="archive-entries/entry">
	<article class="entry listed clearfix">
		<div class="grid_3 alpha">
			<xsl:choose>
				<xsl:when test="attached-images/item[1]">
					<xsl:apply-templates select="attached-images/item[1]" />
				</xsl:when>
				<xsl:otherwise>
					<div class="placeholder" style="height:145px;"></div>
				</xsl:otherwise>
			</xsl:choose>
		</div>
		<div class="grid_6 omega">
			<h3><a href="{$root}/blog/view/{entry-title/@handle}" rel="permalink" title="Read article..."><xsl:value-of select="entry-title" /></a></h3>
			<div class="date">
				<xsl:call-template name="format-date">
					<xsl:with-param name="date" select="publish-date"/>
					<xsl:with-param name="format" select="'M x, Y'"/>
				</xsl:call-template>
			</div>
			<p><xsl:copy-of select="entry-summary/node()" /></p>
			
			<div class="entry_links">
				<a href="{$root}/blog/view/{entry-title/@handle}" rel="permalink" class="button">Read Entry</a>
			</div>
		</div>
	</article>
</xsl:template>


<xsl:template match="attached-images/item">
	<img src="{$root}/image/2/210/145/5{image/@path}/{image/filename}" alt="{caption}" title="{caption}" />
</xsl:template>
</xsl:stylesheet>