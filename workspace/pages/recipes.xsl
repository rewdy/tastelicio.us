<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:include href="../utilities/master.xsl" />
<xsl:include href="../utilities/pagination.xsl" />

<xsl:template match="/data">
	<section id="recipe_listing">
		<xsl:apply-templates select="recipe-listing/entry" />
		<div id="pages">
			<xsl:call-template name="pagination">
				<xsl:with-param name="pagination" select="entry-listing/pagination" />
				<xsl:with-param name="pagination-url" select="concat($root, '/recipes/$')" />
			</xsl:call-template>
		</div>
	</section>	
</xsl:template>

<xsl:template match="recipe-listing/entry">
	<article class="recipe listed clearfix">
		<div class="recipe_img grid_3 alpha">
		<xsl:choose>
			<xsl:when test="photo">
				<img src="{$root}/image/2/210/145/5{photo/@path}/{photo/filename}" alt="Photo of {title}" title="Photo of {title}" width="210" height="145" />
			</xsl:when>
			<xsl:otherwise>
				<div class="placeholder" style="height:145px">&#160;</div>
			</xsl:otherwise>
		</xsl:choose>
		</div>
		<div class="grid_6 omega">
			<h2><a href="{$root}/recipes/view/{title/@handle}" rel="permalink" title="View recipe..."><xsl:value-of select="title" /></a></h2>
			<xsl:copy-of select="intro/node()" />
			<p class="small quiet">Prep time: <xsl:value-of select="prep-time" /> | Total time: <xsl:value-of select="total-time" /></p>
			<div class="entry_links">
				<a href="{$root}/recipes/view/{title/@handle}" rel="permalink" class="button">View Recipe...</a>
			</div>
		</div>
	</article>
</xsl:template>
	
</xsl:stylesheet>