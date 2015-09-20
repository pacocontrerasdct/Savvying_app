function initMap() {

  var myLatLng = {lat: 51.520235, lng: -0.070367}; 

  var map = new google.maps.Map(document.getElementById('map'), {
    center: myLatLng,
    zoom: 15
  });
  var geocoder = new google.maps.Geocoder();
  document.getElementById('submit').addEventListener('click', function(){
    geocodeAddress(geocoder, map);
  });

}

// To put an icon or image instead of google flag
var image = 'images/your_icon';

function geocodeAddress(geocoder, resultsMap) {
  
  var address = document.getElementById('address').value;

  geocoder.geocode({'address': address}, function(results, status) {
    if (status === google.maps.GeocoderStatus.OK) {
      resultsMap.setCenter(results[0].geometry.location);
      
      var marker = new google.maps.Marker({
        map: resultsMap,
        animation: google.maps.Animation.DROP,
        //icon: image,
        title: 'Hello World!',
        position: results[0].geometry.location
      });

    } else {
      alert('Geocode was not successful for the following reason: ' + status);
    }
  });
}


