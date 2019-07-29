function handleOnboardingAnimation() {
  var logo = $('.user-profil-container').find('.mileup-logo');
  var text = $('.user-profil-container').find('.mileup-welcoming-text');
  var button = $('#start-form').find('.transparent-button');

  setTimeout(function(){
    $(logo).fadeIn(1000, function(){$(this).removeClass('hidden')});
  }, 500);
  setTimeout(function(){
    $(text).fadeIn(1000, function(){$(this).removeClass('hidden')});
  }, 500);
  setTimeout(function(){
    $(button).fadeIn(500, function(){$(this).removeClass('hidden')});
  }, 1700)
}

// METHODS CALL //

$(document).ready(function() {
  handleOnboardingAnimation();
});
