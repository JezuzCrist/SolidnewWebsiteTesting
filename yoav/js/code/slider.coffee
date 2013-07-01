
@.sliderEvents = []


$(document).ready ->
	$('#mainSlider').find('ul').find('li').each (index)->
		
		sliderEvents.push(->
			alert("eventTriggred->"+index)
		)

		$(@).click ->

			pressedLink = $(@)
			respondingItem = $('#item-'+pressedLink.attr("number"))
			console.log "pressed link = "+pressedLink.attr("number")
			console.log "responding item = "+'#item-'+pressedLink.attr("number")

			sliderEvents[index]()


			# if pressedLink.attr("selected") == "true"
				
			# else




# @.hideSlide = (jQuerySelector)->
# 	jQuerySelector.hide()






@.hideVisableSlide= ->
	$('.itemContainer  .selected').removeClass ".selected"
