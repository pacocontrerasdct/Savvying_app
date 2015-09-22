$(document).ready(function() {
  console.log("inside");
  
  setSelectInput();
})

function ajaxRequest(method, url) {
  var request = new XMLHttpRequest();
  request.open(method, url)
  request.send();
  return request;
}

function successfulRequest(request) {
  return request.readyState === 4 && request.statusText === 'OK'
}

  // Defining variables
  var getSearchSelector = $('#search-type'); 
  var getSearchButton = $('#search-button');
  var getSearchInput = $('#search-input');
  var getResultData = $('#results');
  var selector;
  var input;
  
  // Event Listeners
  //getSearchSelector.on('focus', getSelectInput);
  
  getSearchButton.on('click', getDatafromSpotify); 
  getSearchInput.on('blur', getFormInput);
  getSearchSelector.on('change', getDatafromSpotify);

  // Functions

  function setSelectInput(e) {
    var types = ['artist', 'album', 'track'];
    console.log("inside getSearchTypeInput");
    getSearchSelector.empty();
    $.each(types, function(index, type) {
      console.log(type)
      getSearchSelector.append('<option value="' + type + '">' + type + '<option');
    });
    getSearchSelector.prepend('<option value="default">Choose your search<option');
  }

  var limit = 10;
  
  function getDatafromSpotify() {
    var input = getFormInput();

    var selector = getSelectInput();
    $.get('https://api.spotify.com/v1/search?q=' + input + '&offset=0&limit=' +limit + '&type=' + selector + '', function(response) {
        
        getResultData.empty();

        console.log('inside getData');
        console.log(response);
        url = 'https://api.spotify.com/v1/search?q=' + input + '&offset=0&limit=' + limit + '&type=' + selector + '';
        console.log(url);
        template = "";

        var query = response[selector + 's'].items;

        $.each(query, function(index, data) 
        {
          console.log('inside response');
          console.log(data);
          if (selector == 'track') {
              template += '<div id="track-card">';
              template += '<img src="' + data.album.images[1].url + '"/><br/>';
              template += '<audio src="' + data.preview_url + '" controls></audio>';
              template += '</div>';
          } else {
            template += "<p>- " + data.name + "</p>";
          }
        });
          
        getResultData.hide().append(template).fadeIn('slow');
    });
  
  };

  function getFormInput(){
    event.preventDefault();
    inputQuery = $('input#search-input');
    // getting the value itself
    userInput = inputQuery[0].value;
    console.log(userInput);
    // if we have an input
    if(userInput){ 
      return userInput;
    } 
  }
  function getSelectInput() {
    inputQuery = $('select#search-type');
    console.log(inputQuery.val());
    selector = inputQuery.val();

    return selector;
  }








