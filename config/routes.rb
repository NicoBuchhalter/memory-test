Rails.application.routes.draw do

  resources :tests
  resources :templates
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users

  root to: 'home#index'

  mount Sidekiq::Web, at: 'sidekiq'
end
