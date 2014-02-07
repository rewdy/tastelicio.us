<?php

/*

Share Links
----------

PHP function to generate sharing links

*/


function getShareLinks($url, $title, $class = 'sharing-list', $icon_prefix = 'fa fa-') {

	$url = urlencode($url);
	$title = urlencode($title);

	$output = '';
	$output .= '<ul class="' . $class . '">' . "\n";
	$output .= "\t" . '<li><a href="http://www.facebook.com/sharer.php?s=100&amp;p[title]={{title}}&amp;p[url]={{url}}" class="facebook"><i class="{{icon_prefix}}facebook"></i> Facebook</a></li>' . "\n";
	$output .= "\t" . '<li><a href="https://twitter.com/intent/tweet?url={{url}}&amp;text={{title}}" class="twitter"><i class="{{icon_prefix}}twitter"></i> Twitter</a></li>' . "\n";
	$output .= "\t" . '<li><a href="https://alpha.app.net/intent/post?url={{url}}&amp;text={{title}}" class="adn"><i class="{{icon_prefix}}adn"></i> App.net</a></li>' . "\n";
	$output .= "\t" . '<li><a href="https://plus.google.com/share?url={{url}}" class="gplus"><i class="{{icon_prefix}}google-plus"></i> Google +</a></li>' . "\n";
	$output .= "\t" . '<li><a href="mailto:?&amp;Subject={{title}}&amp;Body={{url}}" class="email"><i class="{{icon_prefix}}envelope"></i> Email</a></li>' . "\n";
	$output .= '</ul>';

	$output = preg_replace('/{{url}}/', $url, $output);
	$output = preg_replace('/{{title}}/', $title, $output);
	$output = preg_replace('/{{icon_prefix}}/', $icon_prefix, $output);

	return $output;
}
