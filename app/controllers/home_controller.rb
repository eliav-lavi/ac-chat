class HomeController < ApplicationController
  def welcome
    render :chat if session[:nickname].present?
  end

  def login
    session[:nickname] = params[:nickname]
    render :chat
  end

  def send_message
    ActionCable.server.broadcast 'chat_channel', nickname: session[:nickname], message: params[:message]

    respond_to :js
  end

  def quit_chat
    reset_session
    render :welcome
  end
end
