<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" omit-xml-declaration="yes" indent="yes" />

<xsl:include href="date-time.xsl" />
<xsl:include href="month-to-text.xsl" />
<xsl:include href="navigation.xsl" />
<xsl:include href="search.xsl" />
<xsl:include href="widgets.xsl" />

<xsl:template match="/">
<xsl:text disable-output-escaping="yes">&lt;</xsl:text>!DOCTYPE html<xsl:text disable-output-escaping="yes">&gt;</xsl:text>

<html lang="en">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		
		<title><xsl:apply-templates select="data" mode="page-title"/></title>
	
		<xsl:comment>Stylesheets</xsl:comment>
		<link href="{$workspace}/theme/lib/fonts/font-awesome-4.0.3/css/font-awesome.min.css" rel="stylesheet" type="text/css" />

		<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900,200italic,300italic,400italic,600italic,700italic,900italic" rel="stylesheet" type="text/css" />
		
		<link href="{$workspace}/theme/css/style.css" rel="stylesheet" type="text/css" />
		
		<xsl:comment>Javascript</xsl:comment>
		<script type="text/javascript" src="{$workspace}/theme/js/jquery-1.10.2.min.js"></script>
		<script type="text/javascript" src="{$workspace}/theme/js/jquery.cycle.min.js"></script>
		<xsl:if test="$current-page = 'recipes'">
		<script type="text/javascript" src="{$workspace}/theme/js/masonry.min.js"></script>
		</xsl:if>
		<script type="text/javascript" src="{$workspace}/theme/js/cody-script.js"></script>

		<xsl:comment>IE Helper</xsl:comment>
		<xsl:comment><![CDATA[[if lt IE 9]>
		<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]]]></xsl:comment>
		
		<xsl:comment>Meta</xsl:comment>
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.5" />

	</head>
	
	<body>

		<div id="control">
			
			<div id="drawer">
				<nav id="site">
					<xsl:apply-templates select="data/navigation" />
					<xsl:apply-templates select="data/page-nav" />
				</nav>
				<div id="drawer-region" class="small">
					<xsl:comment>Widgets maybe can go here.</xsl:comment>
				</div>
			</div> <xsl:comment>close nav#navigation</xsl:comment>

			<div id="page">
				<div id="wrapper">
					
					<header id="site-header">
						<div class="grid">
							<div id="header-contents">
								<div class="g2">
									<a id="drawer-link" href="#drawer"><i class="fa fa-bars"></i> <span class="text">Menu</span></a>
								</div>
								<div class="g8 text-center">
									<div id="site-title"><a href="{$root}" title="Go Home"><xsl:value-of select="$website-name" rel="home" /></a></div>
								</div>
								<div class="g2 right-always">
									<a id="search-link" href="#search"><i class="fa fa-search"></i> <span class="text">Search</span></a>
								</div>
							</div>
						</div>
					</header>
					
					<div id="content-body">

						<div class="grid">
							<div class="g12">
								
								<xsl:apply-templates />
							
							</div> <xsl:comment>close .g12</xsl:comment>
						</div> <xsl:comment>close .grid</xsl:comment>
					</div> <xsl:comment>close #content-body</xsl:comment>

				</div> <xsl:comment>close #wrapper</xsl:comment>
				
				<footer>
					<div class="grid">
						
						<xsl:call-template name="widgets" />

						<div class="g12 center">
							<div class="lined">
								<p>&#169; 2014 All rights reserved. | <a href="index.php">Home</a> | <a href="#top">Top</a></p>
							</div>
						</div>
					</div>
				</footer>

				<xsl:comment>Site Search</xsl:comment>
				<xsl:call-template name="search" />

				<xsl:comment>Page Overlay (Blackout)</xsl:comment>
				<div id="page-overlay"></div>
				
			</div> <xsl:comment>close #page</xsl:comment>
		</div> <xsl:comment>close #control</xsl:comment>

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