class Slider
  @document_ready: ->
    $('#slider').slider({min: 1, max: $('#slider').data('total'), slide: Slider.sliding})

  @sliding: (e, ui) ->
    count = ui.value
    settings =
      dataType: 'json'
      type: 'get'
      url: "/find?count=#{count}"
    $.ajax(settings).done(Slider.display)

  @display: (msg) ->
    $('#word').text(msg.word)
    $('#hex').text(msg.hex)
    $('#dec').text(msg.dec)
    $('#bin').text(msg.bin)
    $('body').css('background-color', msg.color)

$(document).ready(Slider.document_ready)