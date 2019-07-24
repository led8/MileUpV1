var leftPaddle = $('#left-paddle'),
    rightPaddle = $('#right-paddle'),
    equipmentsContainer = $('.scrolling-equipments-container'),
    oneCardWidth = $('.equipment-card').first().width();

function handleLeftPaddle(event) {
  event.preventDefault();
  $(equipmentsContainer).animate({
    scrollLeft: `+=${oneCardWidth+50}`
  }, 800);
}

function handleRightPaddle(event) {
  event.preventDefault();
  $(equipmentsContainer).animate({
    scrollLeft: `-=${oneCardWidth+50}`
  }, 800);
}

$(document).ready(function() {
  $(leftPaddle).click(function(event){
    handleLeftPaddle(event)
  });

  $(rightPaddle).click(function(event){
    handleRightPaddle(event)
  });
});

