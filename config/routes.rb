Rails.application.routes.draw do
  # root to: 'tasks#index'

  root to: 'toppages#index'

  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :create]
  
  resources :tasks
end
