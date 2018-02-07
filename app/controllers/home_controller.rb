class HomeController < ApplicationController
  def welcome
  end

  def login
    render :chat
  end

  def send_message
    ActionCable.server.broadcast 'chat_channel', nickname: params[:nickname], message: params[:message]

    respond_to :js
  end

  def quit_chat
    render :welcome
  end
end
