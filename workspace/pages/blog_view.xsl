<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:include href="../utilities/master.xsl" />
<xsl:include href="../utilities/attached-images.xsl" />
<xsl:include href="../utilities/attached-recipes.xsl" />
<xsl:include href="../utilities/sharing.xsl" />

<xsl:template match="/data">

	<xsl:apply-templates select="//events/entry-save-comment" />

	<xsl:apply-templates select="entry-single/entry" />

	<p><a href="{$root}" class="home-link"><i class="fa fa-home"></i> Home</a></p>

</xsl:template>

<xsl:template match="data" mode="page-title">
	<xsl:value-of select="concat(entry-single/entry/entry-title, ' | ', $website-name)" />
</xsl:template>

<xsl:template match="entry-single/entry">

<article class="entry">

	<xsl:apply-templates select="attached-images" />

	<h1><xsl:value-of select="entry-title" /></h1>
	
	<xsl:copy-of select="entry-full-text/node()" />
		
	<xsl:apply-templates select="recipe/item" />
	
	<div class="links">
		<ul class="link-list">
			<li><a href="{$root}/blog/view/{entry-title/@handle}" title="Permalink" class="perma-link"><i class="fa fa-link"></i> <span class="text">Permalink</span></a></li>
			<xsl:if test="not(disable-comments) or disable-comments = 'No'">
				<li><a href="{$root}/blog/view/{entry-title/@handle}#respond" title="Leave a comment" class="comment-link"><i class="fa fa-comment"></i> <span class="text">Comments</span></a></li>
			</xsl:if>
		</ul>
	</div>

	<div class="details">
		<xsl:call-template name="format-date">
			<xsl:with-param name="date" select="publish-date"/>
			<xsl:with-param name="format" select="'M x, Y'"/>
		</xsl:call-template>
	</div>

	<xsl:call-template name="sharing">
		<xsl:with-param name="title" select="entry-title"/>
	</xsl:call-template>

</article>

<xsl:apply-templates select="//entry-comments" />

<xsl:if test="not(disable-comments) or disable-comments = 'No'">
	<form method="post" action="" enctype="multipart/form-data" class="comment_form">
		<h3 id="respond">Leave a Comment</h3>
		<input name="MAX_FILE_SIZE" type="hidden" value="5242880" />
		<input name="fields[for-post]" type="hidden" value="{entry-title}" />
		<div class="row clearfix">
			<div class="g6">
				<div class="form-item">
					<label for="fields[name]">Name</label>
					<div class="input-holder"><input name="fields[name]" type="text" /></div>
				</div>
				<div class="form-item">
					<label for="fields[email]">Email</label>
					<div class="input-holder"><input name="fields[email]" type="text" /></div>
				</div>
				<div class="form-item">
					<label for="fields[website]">Website</label><span class="small quiet"> (Optional)</span>
					<div class="input-holder"><input name="fields[website]" type="text" /></div>
				</div>
			</div>
			<div class="g6">
				<div class="form-item">
					<label for="fields[comment]">Comment</label>
					<div class="input-holder"><textarea name="fields[comment]" rows="9" cols="50"></textarea></div>
				</div>
			</div>
		</div>
		<div class="form-item submit">
			<div class="input-holder"><input name="action[entry-save-comment]" type="submit" value="Submit Comment" class="button submit" /></div>
		</div>
		<div class="form-item accessible-hide">
			<div class="input-holder"><input name="url" type="text" /></div>
		</div>
	</form>
</xsl:if>

</xsl:template>

<xsl:template match="entry-comments">
	<xsl:if test="entry">
		<section id="comments">
			<h3>Comments</h3>
			<xsl:apply-templates select="entry" />
		</section>
	</xsl:if>
</xsl:template>

<xsl:template match="entry-comments/entry">
	<article class="comment">
		<xsl:copy-of select="comment/node()" />
		<div class="details">
			Posted by 
			<xsl:choose>
				<xsl:when test="website">
				<a>
					<xsl:attribute name="href"><xsl:value-of select="website"/></xsl:attribute>
					<xsl:value-of select="name" />
				</a>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="name" />
				</xsl:otherwise>
			</xsl:choose> 
			at 
			<xsl:call-template name="format-date">
				<xsl:with-param name="date" select="date-modified"/>
				<xsl:with-param name="format" select="'t, M x, Y'"/>
			</xsl:call-template>.
		</div>
	</article>
</xsl:template>

<xsl:template match="events/entry-save-comment">
    <p>
        <xsl:attribute name="class"><xsl:value-of select="@result"/> notice</xsl:attribute>
        <xsl:value-of select="message"/>
    </p>
</xsl:template>

</xsl:stylesheet>