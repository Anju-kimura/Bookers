class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def index
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
  end

  def create
    @book = Book.new(book_params)
    @book.save
    flash[:notice] = "Book was successfully created."
    redirect_to "/books/#{@book.id}"
    #byebug
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
