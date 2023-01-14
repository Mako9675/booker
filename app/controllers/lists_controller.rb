class ListsController < ApplicationController

  def create
  end

  def index
    @lists = Book.all
  end

  def show
  end

  def edit
  end
end
