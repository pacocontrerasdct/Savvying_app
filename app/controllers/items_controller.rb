class ItemsController < ApplicationController

  def home
  end

  def index
    @items = Item.all.order('created_at DESC')
    @stores = Store.all
    @categories = Category.all
  end

  def new
    @item = Item.new
  end

  def create

  end

  def show
    @item = Item.find(params[:id])
    @stores = Store.all
    @categories = Category.all
  end

  def edit
    @item = Item.find(params[:id])
    @stores = Store.all.order('name ASC')
    @categories = Category.all.order('name ASC')
  end

  def update

  end

  def destroy

  end

  def item_params
    params.require(:item).permit(:name, :description, :category_id, :price, :shop_id, :buyer_id)
  end
end
