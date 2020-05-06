class BooksController < ApplicationController

  before_action :find_book, only:[:show, :edit, :update, :destroy]

  def index
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
