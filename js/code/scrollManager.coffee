$(document).ready ->
	$('div[scroolto^="#"]').each (index)->
		$(@).click (event)->
	    event.preventDefault();
	    target = $($(@).attr("scroolto"))
	    console.log $(@).attr("scroolto")
	    $('html, body').stop().animate({'scrollTop': target.offset().top}, 900, 'swing', ->
	        window.location.hash = target;
	    )