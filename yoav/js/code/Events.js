(function() {
  define([], function() {
    var returnedObject, _GetEvents, _events;
    _events = [];
    _GetEvents = function() {
      _events.push(function() {
        var corespondingItem;
        corespondingItem = $('#item-0');
        return corespondingItem.addClass("selected");
      });
      _events.push(function() {
        var corespondingItem;
        corespondingItem = $('#item-1');
        return corespondingItem.addClass("selected");
      });
      _events.push(function() {
        var corespondingItem;
        corespondingItem = $('#item-2');
        return corespondingItem.addClass("selected");
      });
      _events.push(function() {
        var corespondingItem;
        corespondingItem = $('#item-3');
        return corespondingItem.addClass("selected");
      });
      return _events;
    };
    return returnedObject = {
      GetEvents: _GetEvents
    };
  });
}).call(this);
