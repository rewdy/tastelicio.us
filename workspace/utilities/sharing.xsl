<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0">
        
    <xsl:template name="sharing">
        <xsl:param name="title" /><!-- Required -->
        <xsl:param name="url" select="concat($root, $current-path)" /><!-- Required -->

        <div class="sharing">
        	<h3 class="sharing-heading">Share this</h3>
	        <ul class="sharing-list">
	        	<li><a href="http://www.facebook.com/sharer.php?s=100&amp;p[title]={$title}&amp;p[url]={$url}" class="facebook"><i class="fa fa-facebook"></i> <span class="text">Share on Facebook</span></a></li>
	        	<li><a href="https://twitter.com/intent/tweet?url={$url}&amp;text={$title}" class="twitter"><i class="fa fa-twitter"></i> <span class="text">Share on Twitter</span></a></li>
	        	<li><a href="http://www.pinterest.com/pin/create/bookmarklet/?url={$url}&amp;description={$title}" class="pinterest"><i class="fa fa-pinterest"></i> <span class="text">Share on Pinterest</span></a></li>
	        	<li><a href="https://plus.google.com/share?url={$url}" class="gplus"><i class="fa fa-google-plus"></i> <span class="text">Share on Google +</span></a></li>
	        	<li><a href="https://alpha.app.net/intent/post?url={$url}&amp;text={$title}" class="adn"><i class="fa fa-adn"></i> <span class="text">Share on App.net</span></a></li>
	        	<li><a href="mailto:?&amp;Subject={$title}&amp;Body={$url}" class="email"><i class="fa fa-envelope"></i> <span class="text">Share by Email</span></a></li>
	        </ul>
	    </div>

    </xsl:template>

</xsl:stylesheet>