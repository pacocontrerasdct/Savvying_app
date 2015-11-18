console.log("hello World");

function initialise() {
  var mapOptions = {
    center: new google.maps.LatLng(51.574538, -0.008641),
    zoom: 13
  };

  var map = new google.maps.Map(document.getElementById('map'), mapOptions);
  addMarker(map);
}

function initialise2() {


console.log("hello findStore");

$(document).ready(function() {
  console.log("inside store finder");

    // Defining variables
    var getSearchInput = $('#new-address');
    var getResultData = $('#results');
    var input;

    // Event Listeners
    getSearchInput.on('blur', getFormInput);

})

//function ajaxRequest(method, url) {
//  var request = new XMLHttpRequest();
//  request.open(method, url)
//  request.send();
//  return request;
//}

//function successfulRequest(request) {
//  return request.readyState === 4 && request.statusText === 'OK'
//}



function getFormInput(){
  inputQuery = $('input#new-address');
  // getting the value itself
  userInput = inputQuery[0].value;
  console.log(userInput);
  // if we have an input
  if(userInput){ 
    initialise(userInput);
  } 
}


function initialise(userInput) {
  // getFormInput is returning the address use input for the new store 
  // result = getFormInput()
  // Need to convert result (address) into LatLng
  // debugger;


  var mapOptions = {
    center: new google.maps.LatLng(51.574538, -0.008641),
    zoom: 13
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
    //debugger;
    var geocoderOptions = { address: userInput };
    geocoder.geocode(geocoderOptions, showMarkerFromGeocoderResults);
}

//google.maps.event.addDomListener(window, 'load', initialise);



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

