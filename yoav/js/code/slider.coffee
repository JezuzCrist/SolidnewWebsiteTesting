$(document).ready->
	$('#mainSlider').find('ul').find('li').each (index)->
		$(@).click ->
			
			pressedLink = $(@)
			respondingItem = $('#item-' +pressedLink.attr("number"))

			if 
				
			else
				respondingItem.



@.hideSlide = (jQuerySelector)->
	jQuerySelector.hide()