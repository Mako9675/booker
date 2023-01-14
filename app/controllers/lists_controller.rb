class ListsController < ApplicationController

  def create
  end

  def index
    @lists = List.all
  end

  def show
  end

  def edit
  end
end
