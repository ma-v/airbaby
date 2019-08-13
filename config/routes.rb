Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  
  resources :babies, only: [:show, :new, :create]
end
