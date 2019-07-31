
// DEPENDENCIES & FUNCTIONS IMPORT //

import "bootstrap";

import 'mapbox-gl/dist/mapbox-gl.css';

import { initMapboxHome } from '../plugins/init-mapbox.js';
import { initMapboxEquipment } from '../plugins/init-equipment-mapbox.js';
import { initUpdateNavbarOnScroll } from '../components/navbar';

// METHODS CALL //

initMapboxHome();
initMapboxEquipment();
initUpdateNavbarOnScroll();
