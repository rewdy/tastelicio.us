/*

Cody Theme
----------

script.js

Cody theme javascript. Uses jQuery (obviously).

*/

$(function(){
	// Drawer toggle
	$('#drawer-link').click(function(){
		$('#control').add(this).toggleClass('open');
		return false;
	});

	// setup search functionality
	setupSearch();

	// setupSlideshows on posts
	setupSlideshows();

	// Set pageTop variable for other functions to use
	window.pageTop = $('html, body').scrollTop();
	$(window).scroll(function(){
		window.pageTop = $(window).scrollTop();
	});

	enableSharing();
});

$(window).load(function(){
	// Various items come in the load section because if images aren't loaded, there will be issues in calculating offsets.

	// Read line
	$('.readline').each(function(){
		var enabled = false;
		var line = $(this);
		var article = $(this).closest('article');
		var articleTop = article.offset().top;
		var articleBottom = articleTop + article.outerHeight();
		var calculationPadding = 400; // this is extra space to add when calculating the percentage because people don't read at the top of their screens.

		// sets the readline accordingly on an interval to keep from bogging down the scroll event
		setInterval(function(){
			var top = window.pageTop;
			if (top >= articleTop && top <= articleBottom) {
				var percentageFinished = Math.round((top - articleTop) / (articleBottom - articleTop - calculationPadding) * 100);
				line.width(percentageFinished + '%');
			} else {
				line.width(0);
			}
		}, 50);
	});

	// setup masonryjs
	setupMasonry();
});

// enable slideshows
function setupSlideshows() {
	$('ul.attached-images-list').each(function(index){
		var parent = $(this);
		var total = $(this).children().length;
		if (total > 1) {
			parent.addClass('slide_show');
			var nextid = 'ss_next_' + index;
			var previd = 'ss_prev_' + index;
			$(this).after('<div class="attached-images-controls"><a href="#" id="' + previd + '">prev</a> | <a href="#" id="' + nextid + '">next</a> &nbsp;(<span id="num"></span>)</div>'); 
			$(this).cycle({
				timeout: 0,
				speed: 1000,
				next: '#' + nextid,
				prev: '#' + previd,
				before: function(curr, next) {
					var currentindex = $(next).index() + 1;
					$('#num').text(currentindex + '/' + total);
				}
			});
		}
	});
}

// enable masonry
function setupMasonry() {
	if (jQuery().masonry) {
		$('#pins-container').masonry({
			itemSelector: '.pin'
		});
	}
}

// enable sharing
function enableSharing() {
	$sharingLinks = $('.sharing-list a:not(.pinterest):not(.email)');
	$sharingLinks.click(function(e){
		href = this.getAttribute('href');
		openWindow(href, 'Share');
		e.preventDefault();
	});
	var $pinterestLink = $('.sharing-list a.pinterest');
	$pinterestLink.click(function(e){
		faLoadingIndicator($(this), 'fa-pinterest', 2000); // show loading indicator
		pinterestPinIt(); // fire of pinterest function
		e.preventDefault(); // stop default
	});
}

// function to open urls in a new window (used by sharing)
function openWindow(url, title) {
	var winWidth = 700;
	var winHeight = 450;
	var left = (screen.width/2)-(winWidth/2);
	var top = (screen.height/2)-(winHeight/2);
	window.open(
		url, // url
		title, // window name
		'toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no, height='+winHeight+', width='+winWidth+', left='+left+', top='+top
	);
}

// pinterest action
function pinterestPinIt() {
	var e = document.createElement('script');
	e.setAttribute('type','text/javascript');
	e.setAttribute('charset','UTF-8');
	e.setAttribute('src','http://assets.pinterest.com/js/pinmarklet.js?r='+Math.random()*99999999);
	document.body.appendChild(e);
}

// show font awesome loading indicator
function faLoadingIndicator($el, iconClass, duration) {
	$icon = $el.find('.fa');
	$icon.removeClass(iconClass);
	$icon.addClass('fa-spinner').addClass('fa-spin');
	setTimeout(function(){
		$icon.removeClass('fa-spinner').removeClass('fa-spin');
		$icon.addClass(iconClass);
	}, duration);
}

// set up search
function setupSearch() {
	ignore = false;
	ignoreNext = 0;
	$(window).keydown(function(e){
		if (!ignore) {
			key = e.keyCode;
			if (key == 91) {
				ignoreNext += 1;
			}
			if (ignoreNext == 0) {
				if (key > 64 && key < 91) {
					showSearch();
				}
			} else {
				ignoreNext += 1;
			}
			ignoreNext = (ignoreNext > 2) ? 0 : ignoreNext;
		} else {
			if (e.keyCode == 27) {
				hideSearch();
				e.preventDefault();
			}
		}
	});

	$('*').focus(function(){
		ignore = true;
	}).blur(function(){
		ignore = false;
	});

	$('#search-link').click(function(){
		showSearch();
		return false;
	});

	$('#search-close').click(function(){
		hideSearch();
		return false;
	});
}

// show search function
function showSearch() {
	ignore = true;
	$('#search-overlay').fadeIn();
	$('#search-overlay input.querybox').focus();
}

// hide search function
function hideSearch() {
	ignore = false
	$('#search-overlay').fadeOut(function(){
		$('#search-overlay input.querybox').val('');
	});
}

// returns a query get parameter if it's set.
function getQuery() {
	name = 'q';
	name = name.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");
	var regexS = "[\\?&]" + name + "=([^&#]*)";
	var regex = new RegExp(regexS);
	var results = regex.exec(window.location.href);
	if(results == null)
		return "";
	else
		return decodeURIComponent(results[1].replace(/\+/g, " "));
}