class Towers
  @document_ready: ->
    $(document).on('click', '.block', Towers.pick_block)
    $(document).on('click', '#one', Towers.move_block)
    $(document).on('click', '#two', Towers.move_block)
    $(document).on('click', '#three', Towers.move_block)
    $(document).on('click', '#start', Towers.start_timer)
    $('#cancel').click(Towers.clear_form)

  @pick_block: ->
    # if($(this).data('id') == $(this).parent().children().first().data('id'))
    $('.block').removeClass('picked')
    $(this).parent().children().first().addClass('picked')

  @move_block: ->
    if($(this).children().first().data('id') > $('.picked').data('id') || $(this).children().length == 0)
      $(this).prepend($('.picked'))

  time = 0

  @start_timer= (e) ->
    $('#start').remove();
    $('.block').show();
    time += 1
    $('#timer').text(time)
    if $('#one').children().length == 0 and $('#two').children().length == 0
      $('#timer').text("Finished at #{time} seconds")
      time = 0
    else
      setTimeout(Towers.start_timer, 1000)
    return false

  @clear_form= (e) ->
    # e.preventDefault()
    $('#num').val('')

window.make_blocks = (num) ->


$(document).ready(Towers.document_ready)