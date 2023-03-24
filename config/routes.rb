Rails.application.routes.draw do
  resources :hero_powers
  resources :powers
  resources :heros, only: [:index, :show]

end
