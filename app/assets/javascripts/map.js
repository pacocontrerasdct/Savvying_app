console.log("hello World");

function initialise() {
  var mapOptions = {
    center: new google.maps.LatLng(51.574538, -0.008641),
    zoom: 15
  };

  var map = new google.maps.Map(document.getElementById('map'), mapOptions);
  addMarker(map);
}

function addMarker(map) {
  console.log('Showing the marker from geocode!');
  var geocoder = new google.maps.Geocoder();
  var showMarkerFromGeocoderResults = function(results, status) {
    if (status == google.maps.GeocoderStatus.OK) {
      var position = results[0].geometry.location;
      var marker = new google.maps.Marker({
        map: map,
        animation: google.maps.Animation.DROP,
        position: position
      });
    } else {
      console.log("oh no. you can't geocode that address!");
    }
  };

  $('address').each(function(index, element) {
    var geocoderOptions = { address: $(element).text() };
    geocoder.geocode(geocoderOptions, showMarkerFromGeocoderResults);
    // debugger;
  });
}

//google.maps.event.addDomListener(window, 'load', initialise);

