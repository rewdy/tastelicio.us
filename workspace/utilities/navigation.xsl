<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="data">
	<xsl:apply-templates select="navigation" />
	<xsl:apply-templates select="page-nav" />
</xsl:template>

<xsl:template match="navigation">
	<ul id="primary_nav" class="menu">
		<xsl:apply-templates select="page[not(types/type = 'hidden') and not(types/type = 'admin')]"/>
	</ul>
</xsl:template>

<xsl:template match="page-nav">
	<ul id="page_nav" class="menu">
		<xsl:apply-templates select="entry" />
	</ul>
</xsl:template>

<xsl:template match="navigation/page">
	<li>
		<a href="{$root}/{@handle}/">
			<xsl:if test="@handle = $root-page">
				<xsl:attribute name="class">active</xsl:attribute>
			</xsl:if>
			<xsl:value-of select="name"/>
		</a>
	</li>
</xsl:template>

<xsl:template match="page-nav/entry">
	<li>
		<a href="{$root}/page/{page-title/@handle}">
			<xsl:if test="$current-page = 'page'">
				<xsl:if test="$title = page-title/@handle">
					<xsl:attribute name="class">active</xsl:attribute>
				</xsl:if>
			</xsl:if>
			<xsl:value-of select="menu-label" />
		</a>
	</li>
</xsl:template>

</xsl:stylesheet>