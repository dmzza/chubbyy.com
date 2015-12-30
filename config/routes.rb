Rails.application.routes.draw do
  resources :pets
  resources :shapes
  resources :colors
  devise_for :users
  resources :campaigns

  devise_scope :user do
    get 'register', to: 'devise/registrations#new', as: :register
    get 'login', to: 'devise/sessions#new', as: :login
  end
  root 'pages#home'
end
