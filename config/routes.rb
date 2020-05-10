Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  root to: "pages#index"

  resources :users
  resources :books
  
  post "/user_favorite_books", to: "user_favorite_books#create", as: "user_favorite_books_create"
  resources :user_favorite_books

  
  # resources :pages
end
