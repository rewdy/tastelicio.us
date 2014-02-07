<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" omit-xml-declaration="yes" indent="yes" />

<xsl:include href="date-time.xsl" />
<xsl:include href="month-to-text.xsl" />
<xsl:include href="navigation.xsl" />
<xsl:include href="widgets.xsl" />

<xsl:template match="/">
<xsl:text disable-output-escaping="yes">&lt;</xsl:text>!DOCTYPE html<xsl:text disable-output-escaping="yes">&gt;</xsl:text>

<html lang="en">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title><xsl:apply-templates select="data" mode="page-title"/></title>
		
		<xsl:comment>Framework Styles</xsl:comment>
		<link href="{$workspace}/css/reset.css" rel="stylesheet" type="text/css" />
		<link href="{$workspace}/css/960gs-custom.css" rel="stylesheet" type="text/css" />
		<link href="{$workspace}/css/text.css" rel="stylesheet" type="text/css" />
		
		<xsl:comment>Custom Styles</xsl:comment>
		<link href="{$workspace}/css/custom.css" rel="stylesheet" type="text/css" />
		<link href="http://fonts.googleapis.com/css?family=Old+Standard+TT:regular,italic,bold" rel="stylesheet" type="text/css" />
		
		<xsl:comment>Nifty Scripty</xsl:comment>
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js"></script>
		<script type="text/javascript" src="{$workspace}/js/jquery.cycle.min.js"></script>
		<script type="text/javascript" src="{$workspace}/js/global.js"></script>
		
<xsl:comment><![CDATA[[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]]]></xsl:comment>

	</head>
	
	<body>
		<div id="top">
			<div class="container_12 clearfix">
				<header id="site_header" class="grid_3">
					<div class="stationary">
						<hgroup>
							<h1><a href="{$root}" title="Go Home"><xsl:value-of select="$website-name" rel="home" /></a></h1>
							<h2>Do somethin' #nom!</h2>
						</hgroup>
						<nav id="site">
							<xsl:apply-templates select="data/navigation" />
							<xsl:apply-templates select="data/page-nav" />
						</nav>
					</div>
					<br/>
				</header>
				<section id="content" class="grid_9">
					<xsl:apply-templates />
				</section>
			</div>
		</div>
		<footer id="site_footer" class="clearfix">
			<div class="container_12">
				<xsl:call-template name="widgets" />
			</div>
		</footer>
	</body>
	<script type="text/javascript">
	var _gaq = _gaq || [];
	_gaq.push(['_setAccount', 'UA-3554916-23']);
	_gaq.push(['_trackPageview']);
	(function() {
		var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
		ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
		var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
	})();
	</script>
</html>

</xsl:template>

<xsl:template match="data" mode="page-title">
	<xsl:choose>
		<xsl:when test="$current-path = '/'" >
			<xsl:value-of select="$website-name" />
		</xsl:when>
		<xsl:otherwise>
			<xsl:value-of select="concat($page-title, ' | ', $website-name)" />
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

</xsl:stylesheet>