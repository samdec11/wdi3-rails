function delete_task() {
  var task_id = $(this).parent().siblings('.task_id').text();
  var token = $('input[name=authenticity_token]').val();
  $(this).parent().parent().empty();
  $.ajax({
    dataType: 'json',
    type: "post",
    url: "/tasks/" + task_id,
    data: {_method: 'delete', authenticity_token:token}
  }).done();
  return false;
}

function update_task() {
  var title = $('#title').val();
  var description = $('#description').val();
  var duedate = $('#duedate').val();
  var address = $('#address').val();
  var task_id = $('#task_id').val();
  var priority_id = $('#priority').val();
  var token = $('input[name=authenticity_token]').val();
  clear_task_form();
  $.ajax({
    dataType: 'json',
    type: "post",
    url: "/tasks/" + task_id,
    data: {_method: 'put', authenticity_token:token, 'task[title]':title, 'task[description]':description, 'task[duedate]':duedate, 'task[address]':address, 'task[priority_id]':priority_id}
  }).done(process_task);
  return false;
}

function edit_task() {
  var title = $(this).parent().siblings('.title').text();
  var description = $(this).parent().siblings('.description').text();
  var date = $(this).parent().siblings('.duedate').text();
  var address = $(this).parent().siblings('.address').text();
  var task_id = $(this).parent().siblings('.task_id').text();
  var priority_id = $(this).parent().siblings('.priority_id').text();
  show_form();
  $('#update_task').show();
  $('#create_task').hide();
  $('#title').val(title);
  $('#description').val(description);
  $('#duedate').val(date);
  $('#task_id').val(task_id);
  $('#priority').val(priority_id);
  $('#address').val(address);
}

function colorize_task_table() {
  _.each($('.task_row'), change_color);
}

function change_color(row) {
  var color = $(row).children('.priority_color').text();
  $(row).css('background-color', color);
  if($(row).children('.complete').text() === 'true') {
    $(row).css('text-decoration', 'line-through');
  }
}

function clear_task() {
  show_form();
  $('#create_task').show();
  $('#update_task').hide();
  $('#title').val("");
  $('#description').val("");
  $('#duedate').val("");
  $('#task_id').val("");
  $('#priority').val("");
  $('#address').val("");
  $('#title').focus();
}

function create_task() {
  var title = $('#title').val();
  var description = $('#description').val();
  var duedate = $('#duedate').val();
  var address = $('#address').val();
  var priority_id = $('#priority').val();
  var token = $('input[name=authenticity_token]').val();
  clear_task_form();
  $.ajax({
    dataType: 'json',
    type: "post",
    url: "/tasks",
    data: {authenticity_token:token, 'task[title]':title, 'task[description]':description, 'task[duedate]':duedate, 'task[address]':address, 'task[priority_id]':priority_id}
  }).done(process_task);
  return false;
}

function clear_task_form() {
  $('#title').val("");
  $('#description').val("");
  $('#duedate').val("");
  $('#address').val("");
  $('.form').hide();
  $('#new_task').show();
}

function process_task(task_list) {
  _.each(task_list, add_task_to_array);
  $('tr').first().siblings().empty();
  _.each(tasks, display_task);
}

function display_task(task) {
  add_marker(task.latitude, task.longitude, task.title);
  var title = task.title;
  var description = task.description;
  var duedate = task.duedate;
  var address = task.address;
  var complete = task.is_complete;
  var tid = task.id;
  var prid = task.priority_id;
  var pricolor = task.priority_color;
  var privalue = task.priority_value;
  var row = $('<tr>');
  var titletd = $('<td>');
  var desctd = $('<td>');
  var datetd = $('<td>');
  var completetd = $('<td>');
  var addresstd = $('<td>');
  var edittd = $('<td>');
  var deletetd = $('<td>');
  var tidtd = $('<td>');
  var pridtd = $('<td>');
  var pricolortd = $('<td>');
  var privaluetd = $('<td>');
  var editbutton = $('<button>');
  var deletebutton = $('<button>');

  titletd.text(title);
  desctd.text(description);
  datetd.text(duedate);
  completetd.text(complete);
  addresstd.text(address);
  tidtd.text(tid);
  pridtd.text(prid);
  pricolortd.text(pricolor);
  privaluetd.text(privalue);
  editbutton.text('Edit');
  deletebutton.text('Delete');

  editbutton.addClass('button radius success tiny edit');
  deletebutton.attr({'class':'button radius alert tiny delete', 'data-confirm':'Are you sure?'});
  row.css('background-color', pricolor);
  titletd.addClass('title');
  desctd.addClass('description');
  datetd.addClass('duedate');
  completetd.addClass('complete');
  addresstd.addClass('address');
  tidtd.addClass('hide task_id');
  pridtd.addClass('hide priority_id');
  pricolortd.addClass('hide priority_color');
  privaluetd.addClass('hide priority_value')

  edittd.append(editbutton);
  deletetd.append(deletebutton);
  row.append([titletd, desctd, datetd, completetd, addresstd, edittd, deletetd, tidtd, pridtd, pricolortd, privaluetd]);
  $('#task_table').append(row);
  add_task_to_array(task)
}

function add_task_to_array(task) {
  tasks = _.reject(tasks, function(t){return t.id == task.id});
  if(task.priority != null) {
    task.priority_color = task.priority.color;
    task.priority_value = task.priority.value;
  }
  tasks.push({id:task.id, title:task.title, description:task.description, duedate:task.duedate, is_complete:task.is_complete, address:task.address, priority_id:task.priority_id, priority_color:task.priority_color, priority_value:task.priority_value});
  tasks = _.sortBy(tasks, function(t){return t.priority_value;}).reverse();
}