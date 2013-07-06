(function() {
  define(["code/Events"], function(Events) {
    var returnedObject, _ActivateSlide, _Init, _NextSlide, _RemoveActiveButton, _currentSlide, _events;
    _events = Events.GetEvents();
    _currentSlide = 0;
    _Init = function() {
      return $(document).ready(function() {
        return $('#mainSlider').find('#sliderButtons').find('.Button').each(function(index) {
          var pressedLink;
          pressedLink = $(this);
          if (pressedLink.attr("active") === "true") {
            _currentSlide = pressedLink.attr("number");
          }
          return $(this).click(function() {
            var corespondingItem;
            pressedLink = $(this);
            corespondingItem = $('#item-' + pressedLink.attr("number"));
            console.log("pressed link = " + pressedLink.attr("number"));
            console.log("responding item = " + '#item-' + pressedLink.attr("number"));
            if (pressedLink.attr("active") === "true") {
              ;
            } else {
              console.log("event");
              _currentSlide = pressedLink.attr("number");
              console.log("current Slide: -" + _currentSlide);
              return _ActivateSlide(pressedLink);
            }
          });
        });
      });
    };
    _NextSlide = function() {
      _currentSlide++;
      if (_currentSlide - 1 > _events.length) {
        _currentSlide = 0;
      }
      return _ActivateSlide($("#link-" + _currentSlide));
    };
    _ActivateSlide = function(pressedLink) {
      _RemoveActiveButton();
      pressedLink.attr("active", "true");
      pressedLink.addClass("selected");
      return _events[_currentSlide]();
    };
    _RemoveActiveButton = function() {
      $('#mainSlider').find('#sliderButtons').find('.Button ').removeClass("selected");
      return $('#mainSlider').find('#sliderButtons').find('.Button ').attr("active", "false");
    };
    return returnedObject = {
      Events: _events,
      Init: _Init,
      NextSlide: _NextSlide
    };
  });
}).call(this);
