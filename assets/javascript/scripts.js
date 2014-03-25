$(document).ready(
	$('.highlight').click( function() {
		if($(this).hasClass('expand')) {
			$(this).removeClass('expand');
		}
		else {
			$(this).addClass('expand');
		}
	}),
	$('.menu-toggle').click( function() {
		$('#header').toggleClass('active');
	})
);