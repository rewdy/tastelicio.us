<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="attached-images">
	<ul class="attached_images_list">
		<xsl:apply-templates select="item" />
	</ul>
</xsl:template>

<xsl:template match="attached-images/item">
	<li>
		<img src="{$root}/image/2/690/320/5{image/@path}/{image/filename}" alt="{alt}" title="{caption}" width="690" height="320" />
	</li>
</xsl:template>

</xsl:stylesheet>