class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    has_many :user_favorite_books
    has_many :books, through: :user_favorite_books
    has_one_attached :profile_picture

    def admin?
      if self.email.ends_with('@bookclub.com')
        #Admin@bookclub.com
        if self.email.split('@').first == 'Admin'
          return true
        end
      end
      false
    end
end
