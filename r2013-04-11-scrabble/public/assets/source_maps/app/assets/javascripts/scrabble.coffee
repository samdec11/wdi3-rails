window.app =
  selected_channel: null
  pusher: null
  ready: ->
    $(document).on('click', '.channel', app.select_channel)
    app.pusher = new Pusher('3e34b6df20635df1b80a')
    $(document).on('submit', '#chat_form', app.send_chat)
  select_channel: ->
    if $(this).hasClass('selected')
      $('td').removeClass('selected')
      app.selected_channel = null
      app.pusher.unsubscribe(app.selected_channel)
    else
      $('td').removeClass('selected')
      $(this).addClass('selected')
      app.pusher.unsubscribe(app.selected_channel) if app.selected_channel
      app.selected_channel = $(this).text()
      app.pusher.subscribe(app.selected_channel)
      app.bind_events()
  bind_events: ->
    channel = app.pusher.channels.channels[app.selected_channel]
    channel.bind('chat', app.chat)
  chat: (data) ->
    $('#chat_window').append("<p>#{data}</p>")
  send_chat: (e) ->
    e.preventDefault()
    if app.selected_channel != null
      message = $('#message').val()
      settings =
        dataType: 'script'
        type: 'post'
        url: "/send_message"
        data: message: message, channel: app.selected_channel
      $.ajax(settings)
      $('#message').val('')
    else
      $('#chat_form').after('<p>You must choose a channel first!</p>')
      $('#chat_form + p').fadeOut(3000, -> $('#form + p').remove())


$(document).ready(app.ready)
