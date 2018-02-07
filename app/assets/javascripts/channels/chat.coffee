App.chat = App.cable.subscriptions.create "ChatChannel",
  connected: ->
    sent_messages = $('#sent-messages')
    sent_messages.append('<div class="posted-message"><p>welcome to the chat room!<p></div>')

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    sent_messages = $('#sent-messages')
    if data.type == 'login'
      sent_messages.append('<div class="posted-message login-message"><p><i>' + data.nickname + ' has joined the room</i><p></div>')
    else if data.type == 'message'
      sent_messages.append('<div class="posted-message"><p><b>' + data.nickname + ': </b>'+ data.message + '<p></div>')
    sent_messages[0].scrollTop = sent_messages[0].scrollHeight