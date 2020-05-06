Rails.application.routes.draw do
  devise_for :users

  root to: 'books#index'
  resources :users
  resources :books
end
