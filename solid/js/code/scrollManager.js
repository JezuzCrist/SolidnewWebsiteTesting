(function() {
  $(document).ready(function() {
    return $('div[scroolto^="#"]').each(function(index) {
      return $(this).click(function(event) {
        var target;
        event.preventDefault();
        target = $($(this).attr("scroolto"));
        console.log($(this).attr("scroolto"));
        return $('html, body').stop().animate({
          'scrollTop': target.offset().top
        }, 900, 'swing', function() {
          return window.location.hash = target;
        });
      });
    });
  });
}).call(this);
