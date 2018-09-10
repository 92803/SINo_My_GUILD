Rails.application.routes.draw do
  resources :members
  resources :my_guilds,only: [:new,:create,:show]
end
