<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="recipe/item">
	<article class="recipe embedded clearfix">
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
			<h3><a href="{$root}/recipes/view/{title/@handle}" rel="permalink" title="View recipe..."><xsl:value-of select="title" /></a></h3>
			<xsl:copy-of select="intro/node()" />
			<p class="small quiet">Prep time: <xsl:value-of select="prep-time" /> | Total time: <xsl:value-of select="total-time" /></p>
			<div class="entry_links">
				<a href="{$root}/recipes/view/{title/@handle}" rel="permalink" class="button">View Recipe...</a>
			</div>
		</div>
	</article>
</xsl:template>

</xsl:stylesheet>