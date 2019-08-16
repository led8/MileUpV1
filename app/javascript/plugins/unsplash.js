// ES Modules syntax
import Unsplash from 'unsplash-js';

const unsplash = new Unsplash({
  applicationId: '61e1fefb7705f19f44ee935bd10f34075ec9fd0b393838a908aeeb3380a80865',
  secret: 'ea68b57f23fbe393bdd772a8dc072775e10fd45b4c878a338055d1fe0ab77c21'
});

const fetchData = (unsplash) => {
  unsplash.search.photos("karting", 1)
    .then(response => response.json())
    .then(data => console.log(data.results[0].urls.full))
}
fetchData(unsplash);
