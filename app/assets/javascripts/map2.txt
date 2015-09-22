$(document).ready(function() {
  console.log("inside map js");
  
  initMap();

  setMap();

  initialize();

})

function setMap() {

  var myLatLng = {lat: 51.520235, lng: -0.070367}; 

  var map = new google.maps.Map(document.getElementById('map'), {
    center: myLatLng,
    zoom: 15
  });
  
  var geocoder = new google.maps.Geocoder();
  $(document).delegate("button", "click", function(e) { 
    var id = $('button#id');
    geocodeAddress(geocoder, map); 
  }); 
}

function resetMap() {
  var myLatLng;
  var map;
  var geocoder;
  var resultsMap;
  var address;
}




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



function initialize() {
    var myLatLng = {lat: 51.520235, lng: -0.070367}; 
    var map = new google.maps.Map(document.getElementById('map'), {
      center: myLatLng,
      zoom: 15
    });
    
    var request = {
      location: myLatLng,
      radius: '1000',
      types: ['store']
    };
    service = new google.maps.places.PlacesService(map);

    service.nearbySearch(request, callback);
  }

  function callback(results, status) {
    if (status == google.maps.places.PlacesServiceStatus.OK) {
      for (var i = 0; i < results.length; i++) {
        var place = results[i];
        
        createMarker(results[i]);
      }
    }
}





















