Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  root to: "pages#index"

  resources :users
  resources :books
  resources :user_favorite_books
  # resources :pages
end
