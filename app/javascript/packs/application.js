import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

import { initMapbox } from '../plugins/init_mapbox';
import { initBookingForm } from '../components/booking_form';
import { initDashboardTabs } from '../components/dashboard_tabs';

initMapbox();
initBookingForm();
initDashboardTabs()



