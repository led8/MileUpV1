import mapboxgl from 'mapbox-gl';

const initMapbox = () => {
  const mapElement = document.getElementById('map');
  const markers = JSON.parse(mapElement.dataset.markers);

  if (mapElement) {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: "mapbox://styles/ledhuy/cjygzo2kc008n1cl539vyk7lg"
    });
    addMarkers(map, markers);
    fitMapToMarkers(map, markers);
  }
};

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

export { initMapbox };
