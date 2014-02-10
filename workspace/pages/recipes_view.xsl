<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:include href="../utilities/master.xsl" />
<xsl:include href="../utilities/pagination.xsl" />
<xsl:include href="../utilities/sharing.xsl" />

<xsl:template match="/data">
	<xsl:apply-templates select="recipe-single/entry" />
	<p><a href="{$root}/recipes" class="home-link"><i class="fa fa-caret-left"></i> Recipes</a></p>
</xsl:template>

<xsl:template match="data" mode="page-title">
	<xsl:value-of select="concat(recipe-single/entry/title, ' | ', $website-name)" />
</xsl:template>

<xsl:template match="recipe-single/entry">

	<article class="recipe single">
		<h1><xsl:value-of select="title" /></h1>
		
		<xsl:if test="photo">
		<div class="feature-image">
			<img src="{$root}/image/2/900/600/5{photo/@path}/{photo/filename}" alt="Photo of {title}" title="Photo of {title}" width="900" height="600" />
			<span class="tag">Recipe</span>
		</div>
		</xsl:if>

		<div class="attn"><xsl:copy-of select="intro/node()" /></div>
		
		<section class="ingredients">
			<h2>Ingredients</h2>
			<xsl:copy-of select="ingredients/node()" />
		</section>
		
		<section class="method">
			<h2>Method</h2>
			<xsl:copy-of select="method/node()" />
		</section>
		
		<div class="details">Prep time: <xsl:value-of select="prep-time" /> | Total time: <xsl:value-of select="total-time" /></div>

		<xsl:call-template name="sharing">
			<xsl:with-param name="title" select="title"/>
		</xsl:call-template>

	</article>
</xsl:template>
	
</xsl:stylesheet>