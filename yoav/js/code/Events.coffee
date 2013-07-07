define([],->
	_events = []

	_GetEvents = ->
		_events.push(->
			# console.log ("eventTriggred->")
			corespondingItem = $('#item-0')
			corespondingItem.addClass "selected"

		)
		_events.push(->
			# console.log ("eventTriggred->")
			corespondingItem = $('#item-1')
			corespondingItem.addClass "selected"

		)
		_events.push(->
			# console.log ("eventTriggred->")
			corespondingItem = $('#item-2')
			corespondingItem.addClass "selected"

		)
		_events.push(->
			# console.log ("eventTriggred->")
			corespondingItem = $('#item-3')
			corespondingItem.addClass "selected"

		)

		_events


	returnedObject=
		{
			GetEvents: _GetEvents
		}
)