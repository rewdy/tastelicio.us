<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="attached-images">
	<ul class="attached-images-list">
		<xsl:apply-templates select="item" />
	</ul>
</xsl:template>

<xsl:template match="attached-images/item">
	<li>
		<img src="{$root}/image/2/900/400/5{image/@path}/{image/filename}" alt="{alt}" title="{caption}" width="900" height="400" />
	</li>
</xsl:template>

</xsl:stylesheet>