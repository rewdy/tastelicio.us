<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:include href="../utilities/master.xsl" />
<xsl:include href="../utilities/pagination.xsl" />

<xsl:template match="/data">
	<h1 class="listing">Recipes</h1>
	
	<div id="pins-container" class="row">
		<xsl:apply-templates select="recipe-listing/entry" />
	</div>
	
	<div id="pages">
		<xsl:call-template name="pagination">
			<xsl:with-param name="pagination" select="entry-listing/pagination" />
			<xsl:with-param name="pagination-url" select="concat($root, '/recipes/$')" />
		</xsl:call-template>
	</div>

</xsl:template>

<xsl:template match="recipe-listing/entry">
	<article class="recipe g6 pin">
		<div class="card">
			<xsl:if test="photo">
			<div class="recipe-image">
				<img src="{$root}/image/2/500/250/5{photo/@path}/{photo/filename}" alt="Photo of {title}" title="Photo of {title}" width="500" height="250" />
			</div>
			</xsl:if>
			
			<h2><a href="{$root}/recipes/view/{title/@handle}" rel="permalink" title="View recipe..."><xsl:value-of select="title" /></a></h2>

			<xsl:copy-of select="intro/node()" />

			<p><a href="{$root}/recipes/view/{title/@handle}" class="more-link">View recipe <i class="fa fa-caret-right"></i></a></p>

			<div class="details">Prep time: <xsl:value-of select="prep-time" /> | Total time: <xsl:value-of select="total-time" /></div>
		</div>
	</article>
</xsl:template>
	
</xsl:stylesheet>