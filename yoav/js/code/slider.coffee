
@.sliderEvents = []


$(document).ready ->
	$('#mainSlider').find('ul').find('li').each (index)->

		$(@).click ->

			pressedLink = $(@)			
			corespondingItem = $('#item-'+pressedLink.attr("number"))
			console.log "pressed link = "+pressedLink.attr("number")
			console.log "responding item = "+'#item-'+pressedLink.attr("number")

			sliderEvents[index]()


			# if pressedLink.attr("selected") == "true"
				
			# else




# @.hideSlide = (jQuerySelector)->
# 	jQuerySelector.hide()



sliderEvents.push(->
	# console.log ("eventTriggred->")
	hideVisableSlide()	
	corespondingItem = $('#item-0')
	corespondingItem.addClass "selected"

)
sliderEvents.push(->
	# console.log ("eventTriggred->")
	hideVisableSlide()	
	corespondingItem = $('#item-1')
	corespondingItem.addClass "selected"

)
sliderEvents.push(->
	# console.log ("eventTriggred->")
	hideVisableSlide()	
	corespondingItem = $('#item-2')
	corespondingItem.addClass "selected"

)
sliderEvents.push(->
	# console.log ("eventTriggred->")
	hideVisableSlide()	
	corespondingItem = $('#item-3')
	corespondingItem.addClass "selected"

)

@.hideVisableSlide= ->
	$('.itemContainer').removeClass "selected"
	# $('.itemContainer').text "selected"
