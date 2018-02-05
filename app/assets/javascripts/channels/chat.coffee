App.chat = App.cable.subscriptions.create "ChatChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    div = $('#sent-messages')
    div.append('<p><b>' + data.nickname + ': </b>'+ data.message + '<p>')
    div[0].scrollTop = div[0].scrollHeight
    $('#message')[0].value = ''
