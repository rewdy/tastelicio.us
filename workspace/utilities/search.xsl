<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="search">
	<div id="search-overlay">
		<a id="search-close" href="#close">
			<svg version="1.1" id="close-x" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
 width="40px" height="40px" viewBox="0 0 40 40" enable-background="new 0 0 40 40" xml:space="preserve">
				<line fill="none" x1="0" y1="0" x2="40" y2="40" style="stroke:#999;stroke-width:1px"/>
				<line fill="none" x1="0" y1="40" x2="40" y2="0" style="stroke:#999;stroke-width:1px"/>
			</svg>
		</a>
		<form id="searchform" action="{$root}/search/" method="get">
			<input type="text" name="q" class="querybox" placeholder="Search..." autocomplete="on" />
			<p class="input-help">Type and hit return to search.</p>
		</form>
	</div>
</xsl:template>

</xsl:stylesheet>