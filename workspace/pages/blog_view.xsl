<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:include href="../utilities/master.xsl" />
<xsl:include href="../utilities/attached-images.xsl" />
<xsl:include href="../utilities/attached-recipes.xsl" />
<xsl:include href="../utilities/sharing.xsl" />

<xsl:template match="/data">
	<xsl:apply-templates select="//events/entry-save-comment" />
	<section id="entry_single" class="content_single">
		<xsl:apply-templates select="entry-single/entry" />
	</section>
	<div class="back_holder"><a href="{$root}/blog">Back to blog</a></div>
</xsl:template>

<xsl:template match="data" mode="page-title">
	<xsl:value-of select="concat(entry-single/entry/entry-title, ' | ', $website-name)" />
</xsl:template>

<xsl:template match="entry-single/entry">
	<article class="entry single">
		<header>
			<h2><xsl:value-of select="entry-title" /></h2>
			<div class="date">
				<xsl:call-template name="format-date">
					<xsl:with-param name="date" select="publish-date"/>
					<xsl:with-param name="format" select="'M x, Y'"/>
				</xsl:call-template>
			</div>
		</header>
		<xsl:apply-templates select="attached-images" />	
		<xsl:copy-of select="entry-full-text/node()" />
		
		<xsl:apply-templates select="recipe/item" />
		
		<footer>
			<div class="sharing">
				<xsl:call-template name="twitter-button">
					<xsl:with-param name="data-count" select="'horizontal'" />
					<xsl:with-param name="data-text" select="entry-title" />
				</xsl:call-template>
				<xsl:call-template name="facebook-like">
					<xsl:with-param name="url-to-like" select="$current-url" />
					<xsl:with-param name="font" select="'arial'" />
					<xsl:with-param name="width" select="275" />
				</xsl:call-template>
			</div>
			<div class="entry_links">
				<a href="{$root}/blog/view/{entry-title/@handle}" rel="permalink">Permalink</a> 
				<xsl:if test="not(disable-comments) or disable-comments = 'no'">
				| <a href="#comments">Leave a Comment</a>
				</xsl:if>
			</div>
		</footer>
		<xsl:apply-templates select="//entry-comments" />
	</article>
	<xsl:if test="not(disable-comments) or disable-comments = 'No'">
		<form method="post" action="" enctype="multipart/form-data" class="comment_form">
			<h3 id="respond">Leave a Comment</h3>
			<input name="MAX_FILE_SIZE" type="hidden" value="5242880" />
			<input name="fields[for-post]" type="hidden" value="{entry-title}" />
			<div class="grid_3 alpha">
				<div class="form_item">
					<label for="fields[name]">Name</label>
					<div class="input_holder"><input name="fields[name]" type="text" class="text" /></div>
				</div>
				<div class="form_item">
					<label for="fields[email]">Email</label>
					<div class="input_holder"><input name="fields[email]" type="text" class="text" /></div>
				</div>
				<div class="form_item">
					<label for="fields[website]">Website</label><span class="quiet"> (Optional)</span>
					<div class="input_holder"><input name="fields[website]" type="text" class="text" /></div>
				</div>
			</div>
			<div class="grid_6 omega">
				<div class="form_item">
					<label for="fields[comment]">Comment</label>
					<div class="input_holder"><textarea name="fields[comment]" rows="5" cols="50"></textarea></div>
				</div>
			</div>
			<div class="form_item clear actions">
				<div class="input_holder"><input name="action[entry-save-comment]" type="submit" value="Submit Comment" class="button submit" /></div>
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
		<footer class="meta">
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
		</footer>
	</article>
</xsl:template>

<xsl:template match="events/entry-save-comment">
    <p>
        <xsl:attribute name="class"><xsl:value-of select="@result"/> notice</xsl:attribute>
        <xsl:value-of select="message"/>
    </p>
</xsl:template>

</xsl:stylesheet>