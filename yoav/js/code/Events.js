(function() {
  define([], function() {
    var returnedObject, _GetEvents, _events;
    _events = [];
    _GetEvents = function() {
      var _hideVisableSlide;
      _events.push(function() {
        var corespondingItem;
        _hideVisableSlide();
        corespondingItem = $('#item-0');
        return corespondingItem.addClass("selected");
      });
      _events.push(function() {
        var corespondingItem;
        _hideVisableSlide();
        corespondingItem = $('#item-1');
        return corespondingItem.addClass("selected");
      });
      _events.push(function() {
        var corespondingItem;
        _hideVisableSlide();
        corespondingItem = $('#item-2');
        return corespondingItem.addClass("selected");
      });
      _events.push(function() {
        var corespondingItem;
        _hideVisableSlide();
        corespondingItem = $('#item-3');
        return corespondingItem.addClass("selected");
      });
      _hideVisableSlide = function() {
        return $('.itemContainer').removeClass("selected");
      };
      return _events;
    };
    return returnedObject = {
      GetEvents: _GetEvents
    };
  });
}).call(this);
