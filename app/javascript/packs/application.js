
// DEPENDENCIES & FUNCTIONS IMPORT //

import "bootstrap";

import 'mapbox-gl/dist/mapbox-gl.css';

import { initMapbox } from '../plugins/init-mapbox.js';
import { initUpdateNavbarOnScroll } from '../components/navbar';

// METHODS CALL //

initUpdateNavbarOnScroll();
initMapbox();
