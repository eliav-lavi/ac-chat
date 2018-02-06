App.chat = App.cable.subscriptions.create "ChatChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    sent_messages = $('#sent-messages')
    sent_messages.append('<div class="posted-message"><p><b>' + data.nickname + ': </b>'+ data.message + '<p></div>')
    sent_messages[0].scrollTop = sent_messages[0].scrollHeight