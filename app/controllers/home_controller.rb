class HomeController < ApplicationController
  def welcome
  end

  def login
    ActionCable.server.broadcast 'chat_channel', type: 'login', nickname: params[:nickname]

    render :chat
  end

  def send_message
    ActionCable.server.broadcast 'chat_channel', type: 'message', nickname: params[:nickname], message: params[:message]

    respond_to :js
  end

  def quit_chat
    render :welcome
  end
end
