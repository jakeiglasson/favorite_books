class UserFavoriteBooksController < ApplicationController

  def new
    @user_favorite_book = UserFavoriteBook.new
  end

  def create
    p "\n"
    p "\n"
    pp params
    p "testing"
    p current_user.id
    p "\n"
    p "\n"
    UserFavoriteBook.create(
      book_id: params[:book_id],
      user_id: current_user.id
    )
    # render json: { status: :true }
     redirect_to pages_path
    # redirect_to books_path
    # redirect_to user_favorite_books_path
  end

end
