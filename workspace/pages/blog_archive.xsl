<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:include href="../utilities/master.xsl" />
<xsl:include href="../utilities/pagination.xsl" />

<xsl:include href="../utilities/truncate.xsl" />

<xsl:template match="/data">
	<h1 class="listing">Archive for 
		<xsl:call-template name="month-to-text">
			<xsl:with-param name="month" select="$month" />
		</xsl:call-template> 
		<xsl:value-of select="$year"/>
	</h1>
	<xsl:apply-templates select="archive-entries/entry" />
	<div id="pages">
		<xsl:call-template name="pagination">
			<xsl:with-param name="pagination" select="archive-entries/pagination" />
			<xsl:with-param name="pagination-url" select="concat($root, '/blog/$')" />
		</xsl:call-template>
	</div>

	<p><a href="{$root}" class="home-link"><i class="fa fa-caret-left"></i> Home</a></p>
</xsl:template>

<xsl:template match="archive-entries/entry">
	<article class="entry listing">
	
	<div class="row clearfix">
		<div class="g3 images">
			<xsl:apply-templates select="attached-images/item[1]" />
		</div>

		<div class="g9 content">
			<h2><a href="{$root}/blog/view/{entry-title/@handle}" rel="permalink" title="Read article..."><xsl:value-of select="entry-title" /></a></h2>
			
			<p class="attn summary"><xsl:value-of select="entry-summary"/></p>

			<p><a href="{$root}/blog/view/{entry-title/@handle}" class="more-link">Keep reading <i class="fa fa-caret-right"></i></a></p>
		</div>
	</div>
	<div class="links">
		<ul class="link-list">
			<li><a href="{$root}/blog/view/{entry-title/@handle}" title="Permalink" class="perma-link"><i class="fa fa-link"></i> <span class="text">Permalink</span></a></li>
			<li><a href="{$root}/blog/view/{entry-title/@handle}#comments" title="Leave a comment" class="comment-link"><i class="fa fa-comment"></i> <span class="text">Comments</span></a></li>
		</ul>
	</div>

	<div class="details">
		<xsl:call-template name="format-date">
			<xsl:with-param name="date" select="publish-date"/>
			<xsl:with-param name="format" select="'M x, Y'"/>
		</xsl:call-template>
	</div>

</article>
</xsl:template>

<xsl:template match="attached-images/item">
	<img src="{$root}/image/2/210/145/5{image/@path}/{image/filename}" alt="{caption}" title="{caption}" />
</xsl:template>

</xsl:stylesheet>