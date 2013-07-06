define(["code/Events"],(Events)->
	_events = Events.GetEvents()
	_currentSlide = 0
	_Init = ->
		$(document).ready ->
			$('#mainSlider').find('#sliderButtons').find('.Button').each (index)->
				pressedLink = $(@)	

				if pressedLink.attr("active") == "true"
					_currentSlide = pressedLink.attr("number")

				$(@).click ->

					pressedLink = $(@)
					corespondingItem = $('#item-'+pressedLink.attr("number"))
					console.log "pressed link = "+pressedLink.attr("number")
					console.log "responding item = "+'#item-'+pressedLink.attr("number")

					# console.log pressedLink.attr("active")

					if pressedLink.attr("active") == "true"
						# console.log "true"
						# pressedLink.attr("active","false")
					else
						console.log "event"
						_currentSlide = pressedLink.attr("number")
						console.log "current Slide: -" + _currentSlide
						_ActivateSlide(pressedLink)
						

	_NextSlide = ->
		_currentSlide++
		if _currentSlide-1 > _events.length
			_currentSlide = 0

		_ActivateSlide($("#link-"+_currentSlide))
		

	_ActivateSlide = (pressedLink)->
		_RemoveActiveButton()
		pressedLink.attr("active","true")
		pressedLink.addClass("selected")

		_events[_currentSlide]()

	_RemoveActiveButton = ->
		$('#mainSlider').find('#sliderButtons').find('.Button ').removeClass("selected")
		$('#mainSlider').find('#sliderButtons').find('.Button ').attr("active","false")

	
	returnedObject=
		{
			Events: _events
			Init: _Init
			NextSlide : _NextSlide
		}
)