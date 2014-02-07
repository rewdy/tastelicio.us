<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:include href="../utilities/master.xsl" />
<xsl:include href="../utilities/pagination.xsl" />
<xsl:include href="../utilities/sharing.xsl" />

<xsl:template match="/data">
	<section id="recipe_single" class="content_single">
		<xsl:apply-templates select="recipe-single/entry" />
	</section>
	<div class="back_holder"><a href="{$root}/recipes">Back to recipes</a></div>
</xsl:template>

<xsl:template match="data" mode="page-title">
	<xsl:value-of select="concat(recipe-single/entry/title, ' | ', $website-name)" />
</xsl:template>

<xsl:template match="recipe-single/entry">
	<article class="recipe single clearfix">
		<div class="grid_6 alpha">
			<h2><xsl:value-of select="title" /></h2>
			<xsl:copy-of select="intro/node()" />
			
			<xsl:if test="photo">
			<div class="recipe_img">
				<img src="{$root}/image/2/450/300/5{photo/@path}/{photo/filename}" alt="Photo of {title}" title="Photo of {title}" />
			</div>
			</xsl:if>
			
			<h4>Ingredients</h4>
			<xsl:copy-of select="ingredients/node()" />
			
			<h4>Method</h4>
			<xsl:copy-of select="method/node()" />
			
			<p class="quiet">Prep time: <xsl:value-of select="prep-time" /> | Total time: <xsl:value-of select="total-time" /></p>
		</div>
		<div class="grid_3 omega">
			<div class="stationary">
				<div class="sharing">
					<xsl:call-template name="twitter-button">
						<xsl:with-param name="data-count" value="horizontal" />
						<xsl:with-param name="data-text" value="'{title}'" />
					</xsl:call-template><br />
					<xsl:call-template name="facebook-like">
						<xsl:with-param name="url-to-like" value="{$root}/recipes/view/{title/@handle}" />
						<xsl:with-param name="font" value="'arial'" />
					</xsl:call-template>
				</div>
			</div>
		</div>
	</article>
</xsl:template>
	
</xsl:stylesheet>