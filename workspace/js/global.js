function slideshows() {
	$('ul.attached_images_list').each(function(index){
		var parent = $(this);
		var total = $(this).children().length;
		if (total > 1) {
			parent.addClass('slide_show');
			var nextid = 'ss_next_' + index;
			var previd = 'ss_prev_' + index;
			$(this).after('<p><a href="#" id="' + previd + '">prev</a> | <a href="#" id="' + nextid + '">next</a> &nbsp;(<span id="num"></span>)</p>'); 
			$(this).cycle({
				timeout: 0,
				speed: 1500,
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

// returns a query get parameter if it's set.
function getQuery()
{
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

$(function(){
	slideshows();
});
