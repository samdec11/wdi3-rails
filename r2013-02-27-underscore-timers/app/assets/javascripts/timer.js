
var numbers = [];
var timer = null;

$(function () {
  $('#add_number').click(add_number);
  $('#square').click(square);
  $('#fn').click(generic_function);
  $('#start').click(start_timer);
  $('#stop').click(stop_timer);
});

function start_timer() {
  timer = setInterval(generate_random_number, 500);
}

function generate_random_number() {
  var number = _.random(0, 1000);
  numbers.push(number);
  var numdiv = $('<div>');
  numdiv.text(number);
  numdiv.appendTo($('#numbers'));
  numdiv.addClass('numbox');
}

function stop_timer() {
  clearInterval(timer);
}

function generic_function() {
  empty_boxes();
  numbers = _.map(numbers, funky_calc);
  show_numbers();
}

function funky_calc(i) {
  var equation = $('#number').val();
  return eval(equation);
  $('#number').val("");
  $('#number').focus();
}

function add_number() {
  var num = parseInt($('#number').val());
  numbers.push(num);
  var numdiv = $('<div>');
  numdiv.text(num)
  numdiv.appendTo($('#numbers'));
  numdiv.addClass('numbox');
  $('#number').val("");
  $('#number').focus();
}

function square() {
  empty_boxes();
  numbers = _.map(numbers, square_value);
  show_numbers();
}

function show_numbers() {
  _.each(numbers, create_number_box);
}

function create_number_box(i) {
  var numdiv = $('<div>');
  numdiv.text(i)
  numdiv.appendTo($('#numbers'));
  numdiv.addClass('numbox');
}

function square_value(i) {
  return i * i;
}

function empty_boxes() {
  $('#numbers').empty();
}