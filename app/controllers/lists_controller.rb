class ListsController < ApplicationController

  def index
    @book = Book.new
    @books = Book.all
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to list_path(@book.id)
    else
      @books = Book.all
      render :index
    end

    flash[:notice] = "Book was successfully created."
  end

  def show
    @book = Book.find_by(id: params[:id])
  end

  def edit
    @book = Book.find_by(id: params[:id])
  end

  def update
    @book = Book.new(book_params)
    if @book.update(book_params)
      redirect_to list_path(@book.id)
    else
      @books = Book.all
      render :index
    end

    flash[:notice] = "Book was successfully updated."
  end

  def destroy
    book = Book.find_by(id: params[:id])
    book.destroy(book_params)
    redirect_to '/index'
    flash[:notice] = "Book was successfully destroyed."
  end

private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
