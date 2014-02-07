<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="widgets">
	<xsl:apply-templates select="/data/widget-recipe-recent" />
	<xsl:apply-templates select="/data/widget-entry-archive" />
</xsl:template>

<xsl:template match="/data/widget-entry-archive">
	<section class="g6 widget">
		<h2>Archives</h2>
		<ul class="lined">
			<xsl:apply-templates select="year/month" />
		</ul>
	</section>
</xsl:template>
<xsl:template match="/data/widget-entry-archive/year/month">
	<li>
		<a href="{$root}/blog/archive/{../@value}/{@value}">
			<xsl:call-template name="month-to-text">
				<xsl:with-param name="month" select="@value" />
			</xsl:call-template>
			<xsl:value-of select="../@value" />
		</a>
	</li>
</xsl:template>

<xsl:template match="/data/widget-recipe-recent">
	<section class="g6 widget">
		<h2>Recent Recipes</h2>
		<ul class="lined">
			<xsl:apply-templates select="entry" />
		</ul>
	</section>
</xsl:template>
<xsl:template match="/data/widget-recipe-recent/entry">
	<li>
		<a href="{$root}/recipes/view/{title/@handle}">
			<xsl:value-of select="title" />
		</a>
	</li>
</xsl:template>

</xsl:stylesheet>