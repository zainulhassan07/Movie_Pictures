Rails.application.routes.draw do
  resources :productions
  devise_for :users
  root to: "movies#index"
  resources :movies
  resources :directors
  resources :productions
  resources :users
  post 'movies/:id/add_to_watchlist', to: 'movies#add_to_watchlist'
  get 'watchlists', to: 'movies#watchlists'
  resources :watchlists
  resources :comments
end
