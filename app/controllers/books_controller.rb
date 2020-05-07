class BooksController < ApplicationController
  # this means that a user will need to sign in before they can do anything
  before_action :authenticate_user!
  load_and_authorize_resource
  before_action :find_book, only:[:show, :edit, :update, :destroy]

  def index
    authenticate_user!
    @books = Book.all
  end

  def show
    
  end
  
  def new
    @book = Book.new
  end

  def create
    if Book.create(book_params)
      #success
      redirect_to books_path
    else
      render :new
    end
  end

  def edit
    
  end

  def update
    if @book.update(book_params)
      #success
      redirect_to books_path
    else
      #fail
      render :edit
    end
      
  end

  def destroy
    if @book.destroy
      #success
      redirect_to books_path
    else
      #fail
      render :edit
    end
  end

  private

  def find_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :author, :description, :cover_picture)
  end
  
end


# Note for me - this is used to authenticate whether a user has signed in or not. It'll go into which ever pages we need it to go into. It's for me to remember to include it once the CRUD is done. - DF
# authenticate_user!