class HomeController < ApplicationController
  def welcome
  end

  def send_message
    ActionCable.server.broadcast 'chat_channel', message: params[:message]
  end
end
