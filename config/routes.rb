Rails.application.routes.draw do
  root to: 'home#welcome'
  get 'login' => 'home#welcome'
  post 'login' => 'home#login'
  post '/send_message' => 'home#send_message'
end
