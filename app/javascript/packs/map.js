import GMaps from 'gmaps/gmaps.js';
const image = "assets/bottle.png";

const mapElement = document.getElementById('map');
console.log(mapElement)
var map;

if (mapElement) { // don't try to build a map if there's no div#map to inject in
  map = new GMaps({ el: '#map', lat: 0, lng: 0 });

  const markers = JSON.parse(mapElement.dataset.markers);

  map.addMarkers(markers);
  if (markers.length === 0) {
    map.setZoom(2);
  } else if (markers.length === 1) {
    map.setCenter(markers[0].lat, markers[0].lng);
    map.setZoom(14);
  } else {
    map.fitLatLngBounds(markers);
  }

  const styles = [
    {
      "featureType": "administrative",
      "elementType": "geometry.fill",
      "stylers": [
        {
          "visibility": "off"
        }
      ]
    },
    {
      "featureType": "administrative",
      "elementType": "labels.text.fill",
      "stylers": [
        {
          "color": "#7b697f"
        }
      ]
    },
    {
      "featureType": "administrative.country",
      "elementType": "geometry.stroke",
      "stylers": [
        {
          "color": "#b3a3b7"
        }
      ]
    },
    {
      "featureType": "administrative.country",
      "elementType": "labels.text.fill",
      "stylers": [
        {
          "color": "#846c89"
        },
        {
          "saturation": "0"
        }
      ]
    },
    {
      "featureType": "administrative.neighborhood",
      "elementType": "labels.text",
      "stylers": [
        {
          "visibility": "on"
        }
      ]
    },
    {
      "featureType": "landscape.man_made",
      "elementType": "geometry.fill",
      "stylers": [
        {
          "color": "#e1dfec"
        }
      ]
    },
    {
      "featureType": "landscape.natural",
      "elementType": "geometry.fill",
      "stylers": [
        {
          "color": "#e1dfec"
        }
      ]
    },
    {
      "featureType": "landscape.natural",
      "elementType": "labels.text.fill",
      "stylers": [
        {
          "color": "#8a788e"
        }
      ]
    },
    {
      "featureType": "poi",
      "elementType": "geometry",
      "stylers": [
        {
          "visibility": "off"
        },
        {
          "saturation": "-100"
        },
        {
          "color": "#ddcbe1"
        }
      ]
    },
    {
      "featureType": "poi",
      "elementType": "labels",
      "stylers": [
        {
          "visibility": "on"
        }
      ]
    },
    {
      "featureType": "poi",
      "elementType": "labels.text.fill",
      "stylers": [
        {
          "color": "#8a788e"
        }
      ]
    },
    {
      "featureType": "poi",
      "elementType": "labels.icon",
      "stylers": [
        {
          "visibility": "on"
        },
        {
          "saturation": "-80"
        },
        {
          "lightness": "-5"
        },
        {
          "gamma": "2.00"
        },
        {
          "hue": "#c200ff"
        }
      ]
    },
    {
      "featureType": "poi.attraction",
      "elementType": "labels.icon",
      "stylers": [
        {
          "saturation": "1"
        },
        {
          "lightness": "32"
        },
        {
          "weight": "0.01"
        },
        {
          "gamma": "0.66"
        }
      ]
    },
    {
      "featureType": "poi.government",
      "elementType": "all",
      "stylers": [
        {
          "visibility": "on"
        }
      ]
    },
    {
      "featureType": "poi.medical",
      "elementType": "all",
      "stylers": [
        {
          "visibility": "on"
        }
      ]
    },
    {
      "featureType": "poi.park",
      "elementType": "geometry.fill",
      "stylers": [
        {
          "color": "#cee094"
        },
        {
          "visibility": "on"
        }
      ]
    },
    {
      "featureType": "road",
      "elementType": "geometry.fill",
      "stylers": [
        {
          "color": "#f7f5f9"
        }
      ]
    },
    {
      "featureType": "road",
      "elementType": "labels.text",
      "stylers": [
        {
          "visibility": "off"
        }
      ]
    },
    {
      "featureType": "road",
      "elementType": "labels.text.stroke",
      "stylers": [
        {
          "color": "#ffffff"
        }
      ]
    },
    {
      "featureType": "road",
      "elementType": "labels.icon",
      "stylers": [
        {
          "visibility": "off"
        },
        {
          "saturation": "-10"
        },
        {
          "lightness": "10"
        }
      ]
    },
    {
      "featureType": "road.highway",
      "elementType": "geometry.fill",
      "stylers": [
        {
          "color": "#bdacd0"
        }
      ]
    },
    {
      "featureType": "road.highway",
      "elementType": "geometry.stroke",
      "stylers": [
        {
          "color": "#bdacd0"
        },
        {
          "visibility": "off"
        }
      ]
    },
    {
      "featureType": "road.arterial",
      "elementType": "all",
      "stylers": [
        {
          "visibility": "on"
        }
      ]
    },
    {
      "featureType": "road.arterial",
      "elementType": "labels.text.fill",
      "stylers": [
        {
          "color": "#8a788e"
        }
      ]
    },
    {
      "featureType": "transit",
      "elementType": "labels.text",
      "stylers": [
        {
          "visibility": "off"
        }
      ]
    },
    {
      "featureType": "transit",
      "elementType": "labels.icon",
      "stylers": [
        {
          "saturation": "-50"
        }
      ]
    },
    {
      "featureType": "transit.line",
      "elementType": "geometry.fill",
      "stylers": [
        {
          "color": "#a978b4"
        },
        {
          "visibility": "off"
        }
      ]
    },
    {
      "featureType": "transit.station",
      "elementType": "all",
      "stylers": [
        {
          "visibility": "on"
        }
      ]
    },
    {
      "featureType": "transit.station",
      "elementType": "labels.text.fill",
      "stylers": [
        {
          "color": "#696969"
        }
      ]
    },
    {
      "featureType": "transit.station",
      "elementType": "labels.icon",
      "stylers": [
        {
          "visibility": "off"
        }
      ]
    },
    {
      "featureType": "water",
      "elementType": "geometry.fill",
      "stylers": [
        {
          "visibility": "on"
        },
        {
          "color": "#8fcbf9"
        }
      ]
    },
    {
      "featureType": "water",
      "elementType": "geometry.stroke",
      "stylers": [
        {
          "color": "#5da6f7"
        }
      ]
    }
  ];

  map.addStyle({
    styles: styles,
    mapTypeId: 'map_style'
  });
  map.setStyle('map_style');
}


document.addEventListener("DOMContentLoaded", function () {
  var userAddress = document.getElementById('searchfield');

  if (userAddress) {
    var autocomplete = new google.maps.places.Autocomplete(userAddress, { types: ['geocode'] });

    autocomplete.addListener('place_changed', () => {
      const place = autocomplete.getPlace();

      if (place.geometry) {
        map.map.setCenter(new google.maps.LatLng(place.geometry.location.lat(), place.geometry.location.lng()));
        console.log(place);
        switch (place.address_components[0].types[0]) {
          case "locality":
            map.setZoom(11);
            break;
          case "sublocality":
            map.setZoom(14);
            break;
          case "sublocality_level_2":
            map.setZoom(15);
            break;
          case "administrative_area_level_4":
            map.setZoom(15);
            break;
          case "route":
            map.setZoom(16);
            break;
          case "street_number":
            map.setZoom(16);
            break;
          case "premise":
            map.setZoom(16);
            break;
          case "neighborhood":
            map.setZoom(14);
          default:
            break;
        }
        return;
      }
    });
  }
});
