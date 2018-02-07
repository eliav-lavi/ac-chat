Rails.application.routes.draw do
  root to: 'home#welcome'

  get   'login'         => 'home#welcome'
  post  'login'         => 'home#login'
  get   'chat'          => 'home#chat'

  post  'send_message'  => 'home#send_message'
  get   'quit_chat'     => 'home#quit_chat'
end
