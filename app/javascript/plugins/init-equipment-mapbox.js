import mapboxgl from 'mapbox-gl';

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

export { initMapboxEquipment };
