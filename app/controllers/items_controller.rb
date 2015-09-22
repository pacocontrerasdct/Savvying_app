class ItemsController < ApplicationController

  def home
  end

  def index
    @items = Item.all.order('created_at DESC')
    @stores = Store.all
  end

  def new
    @item = Item.new
  end

  def create

  end

  def show
    @item = Item.find(params[:id])
    @stores = Store.all
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update

  end

  def destroy

  end

  def item_params
    params.require(:item).permit(:name, :description, :category, :price, :shop_id, :buyer_id)
  end
end
