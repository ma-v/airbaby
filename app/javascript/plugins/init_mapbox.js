import mapboxgl from 'mapbox-gl';

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  const fitMapToMarkers = (map, markers) => {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
    map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
  };

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mathias2189/cjzbakq3y015a1clf7t2jj7kn'
    });

    const markers = JSON.parse(mapElement.dataset.markers);
    markers.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);
      const element = document.createElement('div');
      element.style.backgroundImage = `url('${marker.image_url}')`;
      element.className = 'marker';
      element.style.backgroundSize = 'contain';
      element.style.width = '35px';
      element.style.height = '35px';

      new mapboxgl.Marker(element)
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(map);
    });

    fitMapToMarkers(map, markers);

    const cardProducts = document.querySelectorAll('.card-product');
    if (cardProducts.length) {
      cardProducts.forEach((card) => {
        card.addEventListener('mouseover', () => {
          map.flyTo({
            center: JSON.parse(card.dataset.center),
            speed: 2,
            zoom: 15
          });
        });
      })
    }
  }
};

export { initMapbox };






