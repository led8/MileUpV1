import mapboxgl from 'mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';

// HOME MAP //

const initMapboxHome = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const markers = JSON.parse(mapElement.dataset.markers);
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/ledhuy/cjygzo2kc008n1cl539vyk7lg',
      center: [2.3270217, 48.879996899999995],
      zoom: 10
    });

    trackUser(map);
    flyToMarker(map);
    addMarkers(map, markers);
    fitMapToMarkers(map, markers);
  }
};

  // MARKERS //

const addMarkers = (map, markers) => {
  markers.forEach((marker) => {
    const popup = new mapboxgl.Popup().setHTML(marker.popUp);
    new mapboxgl.Marker()
      .setLngLat([ marker.lat, marker.lng ])
      .setPopup(popup)
      .addTo(map);
  });
}

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lat, marker.lng ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};

  // USERS //

const trackUser = (map) => {
  map.addControl(new mapboxgl.GeolocateControl({
    positionOptions: { enableHighAccuracy: true }, trackUserLocation: true
  }));
}

  // FLY TO MARKER //

function flyToMarker(map) {
  var elements = $('.card');
  elements.each(function(index, element) {
    $(element).click(function(event) {
      $('.active-card').removeClass('active-card')
      $(this).find('.card-illustration').addClass('active-card')

      map.flyTo({
        center: [parseFloat(this.dataset.lat), parseFloat(this.dataset.lng)],
        zoom: 15
        });
    })
  })
}

initMapboxHome();

// EQUIPMENT PAGE MAP //

const initMapboxEquipment = () => {
  const mapElement = document.getElementById('equipment-map');

  if (mapElement) {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const marker = JSON.parse(mapElement.dataset.marker);
    const map = new mapboxgl.Map({
      container: 'equipment-map',
      style: "mapbox://styles/ledhuy/cjygzo2kc008n1cl539vyk7lg"
    });
    addMarkerOnEquipment(map, marker);
    fitMapToMarkerOnEquipment(map, marker);
  }
};

const addMarkerOnEquipment = (map, marker) => {
  new mapboxgl.Marker()
    .setLngLat([ marker.lat, marker.lng ])
    .addTo(map);
}

const fitMapToMarkerOnEquipment = (map, marker) => {
  const bounds = new mapboxgl.LngLatBounds();
  bounds.extend([ marker.lat, marker.lng ]);
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};

initMapboxEquipment();

// AJAX //

function handleEquipment(){
  $('#filters-form').submit(function(event){
    event.preventDefault();
    var form = $(this),
        url = $(form).attr("action"),
        type = $(form).attr("method");

    $.ajax({
      url: url,
      type: type,
      data: $(form).serialize(),
      success: function(data){
        $('.equipments-list').remove();
        $('.map').remove();
        $('.map-container').append(data);
      }
    });
  });
}

// METHOD CALL //

handleEquipment();




