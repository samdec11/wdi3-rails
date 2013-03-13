$(function() {
  $('#chart_button').click(show_chart);
});

function show_chart() {
  var activity = $('#activity').val();

  $.ajax({
    dataType: 'json',
    type: "get",
    url: "/exercises/chart/" + activity
}).done(show_result);
  return false;
}

function show_result(exercises) {
  $('#chart').empty();
  new Morris.Line({
  element: 'chart',
  data: exercises,
  xkey: 'completed',
  ykeys: ['value'],
  labels: ['Value']
});

}

