Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard', as: :dashboard
  resources :babies, only: [:show, :new, :create, :edit, :update, :destroy] do
  	resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:destroy]
end
