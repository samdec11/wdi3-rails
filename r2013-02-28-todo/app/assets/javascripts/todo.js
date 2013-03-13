var map;
var markers = [];

$(function() {
  create_boxes();
  init_minicolors();
  colorize_task_table();

  $('#new_task').click(clear_task);
  $('#cancel_task').click(hide_form);
  $('#new_priority').click(clear_priority);
  $('#cancel_priority').click(hide_form);
  $('#create_priority').click(create_priority);
  $('#create_task').on('click', create_task);
  $('#priorities').on('click', '.colorbox', edit_priority);
  $('#update_priority').click(update_priority);
  $('#priorities').on('click', '.down', down_priority);
  $('#priorities').on('click', '.up', up_priority);
  $('#task_table').on('click', '.edit', edit_task);
  $('#update_task').click(update_task);
  $('#task_table').on('click', '.delete', delete_task);
});

function hide_form()
{
  $('#new_priority').show();
  $('#new_task').show();
  $('.form').hide();
}

function show_form()
{
  $('#new_priority').hide();
  $('#new_task').hide();
  $('.form').show();
}