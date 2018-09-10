Rails.application.routes.draw do
  resources :sessions,only:[:new,:create,:destroy]
  resources :my_guilds
  resources :members
end
