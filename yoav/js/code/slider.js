(function() {
  this.sliderEvents = [];
  $(document).ready(function() {
    return $('#mainSlider').find('ul').find('li').each(function(index) {
      return $(this).click(function() {
        var corespondingItem, pressedLink;
        pressedLink = $(this);
        corespondingItem = $('#item-' + pressedLink.attr("number"));
        console.log("pressed link = " + pressedLink.attr("number"));
        console.log("responding item = " + '#item-' + pressedLink.attr("number"));
        return sliderEvents[index]();
      });
    });
  });
  sliderEvents.push(function() {
    var corespondingItem;
    hideVisableSlide();
    corespondingItem = $('#item-0');
    return corespondingItem.addClass("selected");
  });
  sliderEvents.push(function() {
    var corespondingItem;
    hideVisableSlide();
    corespondingItem = $('#item-1');
    return corespondingItem.addClass("selected");
  });
  sliderEvents.push(function() {
    var corespondingItem;
    hideVisableSlide();
    corespondingItem = $('#item-2');
    return corespondingItem.addClass("selected");
  });
  sliderEvents.push(function() {
    var corespondingItem;
    hideVisableSlide();
    corespondingItem = $('#item-3');
    return corespondingItem.addClass("selected");
  });
  this.hideVisableSlide = function() {
    return $('.itemContainer').removeClass("selected");
  };
}).call(this);
