(function() {
  this.sliderEvents = [];
  $(document).ready(function() {
    return $('#mainSlider').find('ul').find('li').each(function(index) {
      sliderEvents.push(function() {
        return alert("eventTriggred->" + index);
      });
      return $(this).click(function() {
        var pressedLink, respondingItem;
        pressedLink = $(this);
        respondingItem = $('#item-' + pressedLink.attr("number"));
        console.log("pressed link = " + pressedLink.attr("number"));
        console.log("responding item = " + '#item-' + pressedLink.attr("number"));
        return sliderEvents[index]();
      });
    });
  });
  this.hideVisableSlide = function() {
    return $('.itemContainer  .selected').removeClass(".selected");
  };
}).call(this);
