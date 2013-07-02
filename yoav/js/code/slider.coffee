
@.sliderEvents = []


$(document).ready ->
	$('#mainSlider').find('#sliderButtons').find('.Button').each (index)->

		$(@).click ->

			pressedLink = $(@)			
			corespondingItem = $('#item-'+pressedLink.attr("number"))
			console.log "pressed link = "+pressedLink.attr("number")
			console.log "responding item = "+'#item-'+pressedLink.attr("number")

			# console.log pressedLink.attr("active")

			if pressedLink.attr("active") == "true"
				# console.log "true"
				# pressedLink.attr("active","false")
				$('#mainSlider').find('#sliderButtons').find('.Button ').removeClass("selected")
			else
				console.log "event"
				sliderEvents[index]()
				pressedLink.attr("active","true")
				pressedLink.addClass("selected")



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
	$('#mainSlider').find('#sliderButtons').find('.Button ').removeClass("selected")
	$('#mainSlider').find('#sliderButtons').find('.Button ').attr("active","false")
	# $('.itemContainer').text "selected"
