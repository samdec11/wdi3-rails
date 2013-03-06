$(function() {
  $('#flickr').click(search_flickr);
  // $('#images').on('click', '.picblock', show_pic);
});

function start_interval() {
  $('#images').empty();
  interval = parseInt($('#interval').val()) * 1000;
  timer = setInterval(generate_pic, interval);
}

var page = 1;

function search_flickr() {
  var search = $('#search').val();
  $.getJSON('http://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=a43e2823f82422085ed2abd3344e184a&text=' + search + '&per_page=500&page=' + page + '&format=json&jsoncallback=?', results);

  //this stuff happens before the result function gets called
}

var index = 0;
var timer;
var photos;

function results(data) {
  interval = parseFloat($('#interval').val()) * 1000;
  photos = data.photos.photo;
  console.log(interval)
  timer = setInterval(show_pic, interval);
}

function show_pic() {
  photo = photos[index];
  block = $('<div>');
  block.addClass('picblock');
  var height = $('#height').val();
  var width = $('#width').val();
  url = "http://farm"+ photo.farm +".static.flickr.com/"+ photo.server +"/"+ photo.id +"_"+ photo.secret +"_m.jpg";
  block.css({"background-image": "url('"+url+"')", "width": width, "height": height });
  console.log(url + ' ' + $('#width').val() + ' ' + $('#height').val());
  block.prependTo($('#images'));
  if(index < 499) {
    index++;
  }
  else {
    index = 0;
    page++;
    clearInterval(timer);
    search_flickr();
  }
}