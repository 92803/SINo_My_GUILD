Rails.application.routes.draw do
  devise_for :guilds
  resources :members
end
