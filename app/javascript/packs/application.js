import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';

import { initMapbox } from '../plugins/init_mapbox';
import { initBookingForm } from '../components/booking_form';
// import { initDashboardTabs } from '../components/dashboard_tabs';

initMapbox();
initBookingForm();

// initDashboardTabs()


