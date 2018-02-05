Rails.application.routes.draw do
  root to: 'home#welcome'

  post '/send_message' => 'home#send_message'
end
