Rails.application.routes.draw do
  devise_for :users

  # get "/", to: ""

  root to: 'books#index'
  resources :users
  resources :books
end
