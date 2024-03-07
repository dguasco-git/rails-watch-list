class ListsController < ApplicationController
  def index
    @list = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(params[:restaurant])
    @list.save
    redirect_to list_path(@list)
  end

  private

  def movie_params
    params.require(:list).permit()
  end
end
