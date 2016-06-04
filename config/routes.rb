Rails.application.routes.draw do
  get 'events/create'

  get 'events/destroy'

  get 'events/edit'

  get 'events/index'

  get 'events/new'

  get 'events/show'

  get 'events/update'

  root 'projects#index'
  resources :projects
  resources :game_type
end
