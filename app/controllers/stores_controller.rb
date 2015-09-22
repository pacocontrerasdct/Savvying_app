class StoresController < ApplicationController

  def index
    @stores = Store.all.order('name ASC')
  end

  def new
    @store = Store.new
  end

  def create

  end

  def show
    @store = Store.find(params[:id])
  end

  def edit
    @store = Store.find(params[:id])
  end

  def update

  end

  def destroy

  end

  def store_params
    params.require(:store).permit(:name, :description, :post_code, :phone, :open_hours)
  end

end
