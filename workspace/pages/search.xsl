<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:include href="../utilities/master.xsl" />
<xsl:include href="../utilities/pagination.xsl" />
<xsl:include href="../utilities/attached-images.xsl" />
<xsl:include href="../utilities/truncate.xsl" />

<xsl:template match="/data">

	<h1 class="listing">Search Results 
		<xsl:if test="$url-q">
			for <xsl:value-of select="$url-q" />
		</xsl:if>
	</h1>
	
	<script>
		(function() {
			var cx = '008814207370013865509:zm-cecgeq24';
			var gcse = document.createElement('script');
			gcse.type = 'text/javascript';
			gcse.async = true;
			gcse.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') +
				'//www.google.com/cse/cse.js?cx=' + cx;
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(gcse, s);
		})();
	</script>
	<gcse:searchresults-only xmlns:gcse="http://www.w3.org/TR/html4/"></gcse:searchresults-only>

	<p><a href="{$root}" class="home-link"><i class="fa fa-home"></i> Home</a></p>

</xsl:template>

</xsl:stylesheet>