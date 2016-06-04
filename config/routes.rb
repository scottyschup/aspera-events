Rails.application.routes.draw do
  root 'projects#index'
  resources :projects
  resources :game_type
end
