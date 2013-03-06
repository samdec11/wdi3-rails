$(function(){

  $('#btn').click(cool_popup);
  $('#btncolor').click(backgroundcolor);
  $('#btnhide').click(hideh1);
  $('#btnshow').click(showh1);
  $('#btnarea').click(area);

});

function cool_popup() {
  var name = $('#name').val();
  alert(name + ', you have won $1 billion!');
}

function backgroundcolor() {
  var color = $('#color').val();
  $('body').css('background-color', color);
}

function hideh1() {
  $('h1').hide();
}

function showh1() {
  $('h1').show();
}

function compute_area() {
  var length = parseFloat($('#length').val());
  var width = parseFloat($('#width').val());
  var a = area(length,width);
  $('#arearesult').text(a + 'sqft');
  if(a < 100)
    $('#arearesult').addClass('success');
  else
    $('#arearesult').addClass('alert');
}

function area(length,width) {
  return length * width;
}