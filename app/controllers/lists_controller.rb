class ListsController < ApplicationController

  def index
    @book = Book.all
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/lists/index'
  end

  def show
  end

  def edit
  end

private
  def book_params
    params.require(:book).permit(:body, :title)
  end
end
