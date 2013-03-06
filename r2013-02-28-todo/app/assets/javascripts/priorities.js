function up_priority() {
  var id = $(this).parent().siblings('.id').text();
  var token = $('input[name=authenticity_token]').val();

  $.ajax({
      dataType: 'json',
      type: "post",
      url: "/priorities/" + id + '/up',
      data: {authenticity_token:token}
    }).done(process_priority);
  return false;
}

function down_priority() {
  var id = $(this).parent().siblings('.id').text();
  var token = $('input[name=authenticity_token]').val();

  $.ajax({
      dataType: 'json',
      type: "post",
      url: "/priorities/" + id + '/down',
      data: {authenticity_token:token}
    }).done(process_priority);
  return false;
}

function clear_priority() {
  $("#create_priority").attr('value', 'Create New Priority');
  $('#name').val("");
  $('input.minicolors').minicolors('value', "");
  $("#value").val("");
  $("#id").val("");
  $('#create_priority').show();
  show_form();
  $('#update_priority').hide();
  $('#name').focus();
}

function edit_priority() {
  show_form();
  var color = $(this).css("background-color");
  var name = $(this).parent().siblings('.name').text();
  var value = $(this).parent().siblings('.value').text();
  var id = $(this).parent().siblings('.id').text();
  var colorhex = rgb2hex(color);
  $('#name').val(name);
  $('input.minicolors').minicolors('value', colorhex);
  $("#create_priority").hide();
  $('#update_priority').show();
  $("#value").val(value);
  $("#id").val(id);
  $('#name').focus();
}

function update_priority() {

  var color= $('INPUT.minicolors').minicolors('rgbString');
  var name = $('#name').val();
  var value = $('#value').val();
  var token = $('input[name=authenticity_token]').val();
  var priority_id = $('#id').val();
  $.ajax({
      dataType: 'json',
      type: "post",
      url: "/priorities/" + priority_id,
      data: {_method: 'put', authenticity_token:token, 'priority[color]':color, 'priority[name]':name, 'priority[value]':value}
    }).done(process_priority);
  return false;

}

function rgb2hex(rgb) {
    rgb = rgb.match(/^rgb\((\d+),\s*(\d+),\s*(\d+)\)$/);
    function hex(x) {
        return ("0" + parseInt(x).toString(16)).slice(-2);
    }
    return "#" + hex(rgb[1]) + hex(rgb[2]) + hex(rgb[3]);
}

function create_boxes() {
  _.each($('.color'), box);
}

function box(a_color) {
  var div = $('<div>');
  var pricolor = $(a_color).text();
  div.css("background-color", pricolor);
  $(a_color).text("");
  div.addClass('colorbox');
  div.appendTo(a_color);
  $(a_color).removeClass('hide');
}


function init_minicolors() {
  var settings = {
    animationSpeed: 100,
    animationEasing: 'swing',
    change: null,
    changeDelay: 0,
    control: 'hue',
    defaultValue: '',
    hide: null,
    hideSpeed: 100,
    inline: false,
    letterCase: 'lowercase',
    opacity: false,
    position: 'default',
    show: null,
    showSpeed: 100,
    swatchPosition: 'left',
    textfield: false,
    theme: 'default'
};
  $('INPUT.minicolors').minicolors(settings);
}

function create_priority() {
  var color= $('INPUT.minicolors').minicolors('rgbString');
  var name = $('#name').val();
  var value = $('#value').val();
  var token = $('input[name=authenticity_token]').val();
  $.ajax({
      dataType: 'json',
      type: "post",
      url: "/priorities",
      data: {authenticity_token:token, color:color, name:name, value:value}
    }).done(process_priority);
  return false;
}

function process_priority(priority_list) {

  _.each(priority_list, add_priority_to_array);
  $('#priorities').empty();
  _.each(priorities, display_priority);
}

function display_priority(msg) {
  color = msg.color;
  name = msg.name;

  var box = $('<div>');
  var colordiv = $('<div>');
  var namediv = $('<div>');
  var iddiv = $('<div>');
  var valuediv = $('<div>');
  var info = $('<li>');
  var up = $('<img>');
  var down = $('<img>');
  var imagediv = $('<div>');

  imagediv.addClass('priority');
  up.addClass('up');
  down.addClass('down');
  up.attr({'src':'/assets/famfamfam/icons/accept.png', 'alt':'Accept'});
  down.attr({'src':'/assets/famfamfam/icons/delete.png', 'alt':'Delete'});
  imagediv.append(up, down);
  colordiv.addClass("priority color");
  box.addClass("colorbox");
  box.css("background-color", color);
  iddiv.addClass('priority hide id');
  valuediv.addClass('priority hide value');
  namediv.addClass('priority name');

  namediv.text(name);
  iddiv.text(msg.id);
  valuediv.text(msg.value);
  info.addClass('priorityli');
  info.append([imagediv, colordiv, namediv, iddiv, valuediv]);
  info.append($('<div>').addClass('clear'));
  colordiv.append(box);
  add_priority_to_array(msg);
  $('#priorities').append(info);
  hide_form();
}

function add_priority_to_array(msg) {
  priorities = _.reject(priorities, function(p){return p.id == msg.id;});
  priorities.push({id:msg.id, name:msg.name, value:msg.value, color:msg.color});
  priorities = _.sortBy(priorities, function(p){return p.value;}).reverse();
}