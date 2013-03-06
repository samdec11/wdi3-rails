$(function() {
  $('#add_color').click(add_color);
  $('#colors').on('click', '.color_boxes', set_color);
  $('#canvas').on('mouseover', '.paint', paint_color);
  $('#clear').click(clear_all);
  create_paint_boxes();
  $('#add_image').click(add_image);
  $('#clear_image').click(clear_image);
  $('#images').on('click', '.thumbnail', select_image)
});

function clear_image() {
  $('#canvas').css('background', "");
}

function add_image() {
  var link = $('#image').val();
  var thumb = $('<div>');
  thumb.addClass('thumbnail');
  thumb.appendTo($('#images'));
  var image = $('<img>')
  image.attr('src', link)
  image.appendTo(thumb)
  $('#image').val("");
}

function select_image() {
  image = $(this).children()
  url = image.attr('src')
  $('#canvas').css('background', "url('" + url + "') no-repeat center");
}

function paint_color() {
  var color = $('#selected').css("background-color");
  var box = $(this);
  box.css("background-color", color);
}

function create_paint_boxes() {
  for(var i = 0; i < 10000; i++) {
    var paint = $('<div>');
    paint.addClass('paint');
    $('#canvas').append(paint);
  }
}

function clear_all() {
  $('#colors').children().remove();
  $('#selected').css("background-color", "");
  $('.paint').css("background-color", "");
}

function set_color() {
  var box = $(this);
  var color = box.css("background-color");
  $('#selected').css("background-color", color);
}

function add_color() {
  var b = $('<div>').appendTo('#colors');
  b.addClass('color_boxes');
  var color = $('#color').val();
  b.css("background-color", color);
  $('#color').val('');
  $('#color').focus();
}