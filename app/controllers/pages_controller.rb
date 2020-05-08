class PagesController < ApplicationController

  def index

    if user_signed_in? == true
      # @user_id = current_user.id
      # @books = Book.all
      puts "start --------------------------"
      puts "\n"
      @user_favorite_books = UserFavoriteBook.all
      @arr = []

      @user_favorite_books.each do |i|
        p "user id: #{i.user_id} current user: #{current_user.id}"
        if i.user_id == current_user.id
          p "--------success--------"
          p i.book_id
          @arr << (Book.find(i.book_id))
        end
      end
      p "----------array----------"
      p @arr
    end

  end

end
