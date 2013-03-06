$(function(){
  // $('#age').blur(blur_func);
  $('#age').change(validate_age);
  // $('body').mousemove(colorize);
  $('body').keypress(shortcut);
});

function shortcut(data) {
  var text = $('#text').text();
  $('#text').text(text + String.fromCharCode(data.which));

  switch(String.fromCharCode(data.which)) {
  case "b":
    $('#text').css("color","blue")
    break;
  case "g":
    $('#text').css("color","green")
    break;
  case "y":
    $('#text').css("color","yellow")
    break;
  case "r":
    $('#text').css("color","red")
    break;
  case "p":
    $('#text').css("color","purple")
    break;
  default:
    $('#text').css("color","black")
  }

}

function colorize(eventdata) {
  $('#x').text(eventdata.clientX);
  $('#y').text(eventdata.clientY);

  $('body').css('background-color', 'rgb(' + (((eventdata.clientX) + (eventdata.clientY)) % 256) + ',' + ((eventdata.clientX) % 256) + ',' + ((eventdata.clientX) % 256) +')');

  if((eventdata.clientX % 2) == 0)
    $('#x').css('color', 'red');
  else
    $('#x').css('color', 'green');
  if((eventdata.clientY % 2) == 0)
    $('#y').css('color', 'red');
  else
    $('#y').css('color', 'green');
}

function validate_age() {
  $('body').children('p').remove();
  var p = $('<p>').text('Your age is ' + ($('#age').val()));
  if(parseInt($('#age').val()) > 17)
    $(p).addClass('green');
  else
    $(p).addClass('red');
  $('h1').before(p);
}