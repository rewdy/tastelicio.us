<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:include href="../utilities/master.xsl" />
<xsl:include href="../utilities/pagination.xsl" />
<xsl:include href="../utilities/attached-images.xsl" />
<xsl:include href="../utilities/truncate.xsl" />

<xsl:template match="/data">
	<section id="entry_listing">
		<h2>Search Results</h2>
		<xsl:apply-templates select="search/entry" />
		<xsl:if test="count(search/entry) &lt; 1">
			<p class="attn">I'm sorry. Can't find anything with those search terms. Try again.</p>
		</xsl:if>
		<div id="pages">
			<xsl:call-template name="pagination">
				<xsl:with-param name="pagination" select="search/pagination" />
				<xsl:with-param name="pagination-url" select="concat($root, $current-path, '$')" />
			</xsl:call-template>
		</div>
	</section>
	<div class="back_holder"><a href="{$root}">Home</a></div>
</xsl:template>

<xsl:template match="search/entry">
	<article>
		<xsl:variable name="base-group">
			search-<xsl:value-of select="@handle" />
		</xsl:variable>
		<h3><xsl:value-of select="/search-{$base-group}/entry[@id={@id}]/entry-title" /></h3>
	
	</article>	
	<xsl:copy-of select="excerpt/node()" />

</xsl:template>

<xsl:template match="search/error">
	<div class="error"><xsl:copy-of select="node()"/></div>
</xsl:template>

<xsl:template match="attached-images/item">
	<img src="{$root}/image/2/210/145/5{image/@path}/{image/filename}" alt="{caption}" title="{caption}" />
</xsl:template>
</xsl:stylesheet>