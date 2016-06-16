Rails.application.routes.draw do
  root to: 'game_types#index'
  resources :events
  resources :game_types
  resources :users, only: [:create, :destroy]
end
