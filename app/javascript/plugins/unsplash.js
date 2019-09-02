// ES Modules syntax
import Unsplash from 'unsplash-js';

const unsplash = new Unsplash({
  applicationId: '61e1fefb7705f19f44ee935bd10f34075ec9fd0b393838a908aeeb3380a80865',
  secret: 'ea68b57f23fbe393bdd772a8dc072775e10fd45b4c878a338055d1fe0ab77c21'
});

const fetchDataBis = (unsplash) => {
  var cards = document.querySelectorAll('.card-illustration');
  console.log(cards[0].dataset.activity)

  unsplash.search.photos(cards[0].dataset.activity, 1)
    .then(response => response.json())
    .then(data => cards.forEach(card => (card.style.backgroundImage = `url('${data.results[0].urls.small}')`)))
}
fetchDataBis(unsplash);

const fetchData = (unsplash) => {
  var banner = document.querySelector('.equipment-container .banner');
  console.log(banner.dataset.activity)

  unsplash.search.photos(banner.dataset.activity, 1)
    .then(response => response.json())
    .then(data => banner.style.backgroundImage = `url('${data.results[0].urls.full}')`)
}
fetchData(unsplash);

