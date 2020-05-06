class User < ApplicationRecord

    has_many :user_favorite_books
    has_many :books, through: :user_favorite_books

end
