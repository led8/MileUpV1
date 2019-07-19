window.onload = function() {

  var hideElement = document.querySelector('.csv-loading-content');
  var displayElement = document.querySelector('.csv-content');
  var circlesElement = document.querySelectorAll('.loader-container .circle');
  var scraperButton = document.querySelector('.bcs-button-scraper');

  hideElement.style.display = 'none';
  displayElement.style.display = 'block';
  circlesElement.forEach(circle => {
    circle.style.display = 'none';
  });
  console.log("Le document est chargé");
};
