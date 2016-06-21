Rails.application.routes.draw do
  root to: 'events#index'

  resources :events, except: [:destroy, :edit, :update]
  resources :game_types, only: [:create, :destroy]
  resources :users, only: [:create, :destroy]
end
