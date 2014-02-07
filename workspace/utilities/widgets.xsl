<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="widgets">
	<xsl:apply-templates select="/data/widget-recipe-recent" />
	<xsl:apply-templates select="/data/widget-entry-archive" />
	<xsl:call-template name="search" />
</xsl:template>

<xsl:template match="/data/widget-entry-archive">
	<section class="grid_4 widget">
		<h4>Archives</h4>
		<div class="liner">
			<ul>
				<xsl:apply-templates select="year/month" />
			</ul>
		</div>
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
	<section class="grid_4 widget">
		<h4>Recent Recipes</h4>
		<div class="liner">
			<ul>
				<xsl:apply-templates select="entry" />
			</ul>
		</div>
	</section>
</xsl:template>
<xsl:template match="/data/widget-recipe-recent/entry">
	<li>
		<a href="{$root}/recipes/view/{title/@handle}">
			<xsl:value-of select="title" />
		</a>
	</li>
</xsl:template>

<xsl:template name="search">
	<section id="search" class="grid_4 widget">
		<h4>Search</h4>
		<form id="searchform" action="{$root}/page/search/" method="get">
			<p>Take a peek around...</p>
			<div class="form_item">
				<div class="input_holder">
					<input type="text" name="q" />
				</div>
			</div>
			<div class="form_item">
				<div class="input_holder">
					<input type="submit" value="Search..." />
				</div>
			</div>
		</form>
	</section>
</xsl:template>

</xsl:stylesheet>