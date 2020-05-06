class Book < ApplicationRecord
    has_many :user_favorite_books
    has_many :users, through: :user_favorite_books

    
end
