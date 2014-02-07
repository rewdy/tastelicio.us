<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="xml"
	omit-xml-declaration="yes"
	encoding="UTF-8"
	indent="yes" />

<xsl:template match="data">
You have received a new comment on Tastelicio.us

-------

<xsl:apply-templates select="events/entry-save-comment/post-values"/>

Visit http://tastelicio.us/symphony/publish/comments/ to moderate.


-------
This email sent from Tastelicio.us

</xsl:template>

<xsl:template match="events/entry-save-comment/post-values">
On post: <xsl:value-of select="for-post"/>

From: <xsl:value-of select="name"/>
Email: <xsl:value-of select="email"/>

Comment: <xsl:value-of select="comment"/>

<xsl:if test="website">
Website: <xsl:value-of select="website"/>
</xsl:if>
</xsl:template>

</xsl:stylesheet>