$(document).ready(function() {
  var scrollTop = $('.scroll-top-event');

  $(scrollTop).click(function(event){
    event.preventDefault();
    $('html, body').animate({
      scrollTop: 0
    }, 800);
    return false
  })
});

