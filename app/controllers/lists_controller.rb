class ListsController < ApplicationController

  def index
    @lists = List.all
    raise
  end

  def show
  end

  def new
  end

end
