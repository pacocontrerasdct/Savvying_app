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
    @stores = Store.all
    @categories = Category.all
  end

  def create
    item = Item.new(item_params)
    if item.save
      flash[:notice] = 'New item created successfully!'
      redirect_to items_path
    else
      flash.now[:error] = "Error: #{item.errors.full_messages}"
      render :new
    end
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
    item = Item.find(params[:id])
    if item.update(item_params)
      flash[:notice] = 'Item details have been updated successfully!'
      redirect_to item_path
    else
      flash.now[:error] = "Error: #{item.errors.full_messages}"
      render :new
    end
  end

  def destroy
    item = Item.find(params[:id]).destroy
    if item
      flash[:notice] = 'Item deleted successfully!'
      redirect_to items_path
    else
      flash.now[:error] = "Error: #{item.errors.full_messages}"
      render :edit
    end
  end

  def item_params
    params.require(:item).permit(:name, :description, :category_id, :price, :shop_id, :buyer_id)
  end
end
