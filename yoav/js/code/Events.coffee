define([],->
	_events = []

	_GetEvents = ->
		_events.push(->
			# console.log ("eventTriggred->")
			_hideVisableSlide()	
			corespondingItem = $('#item-0')
			corespondingItem.addClass "selected"

		)
		_events.push(->
			# console.log ("eventTriggred->")
			_hideVisableSlide()	
			corespondingItem = $('#item-1')
			corespondingItem.addClass "selected"

		)
		_events.push(->
			# console.log ("eventTriggred->")
			_hideVisableSlide()	
			corespondingItem = $('#item-2')
			corespondingItem.addClass "selected"

		)
		_events.push(->
			# console.log ("eventTriggred->")
			_hideVisableSlide()	
			corespondingItem = $('#item-3')
			corespondingItem.addClass "selected"

		)
		_hideVisableSlide= ->
			$('.itemContainer').removeClass "selected"
			# $('#mainSlider').find('#sliderButtons').find('.Button ').removeClass("selected")
			# $('#mainSlider').find('#sliderButtons').find('.Button ').attr("active","false")
			# $('.itemContainer').text "selected"

		_events


	returnedObject=
		{
			GetEvents: _GetEvents
		}
)