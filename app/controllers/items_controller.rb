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
    @stores = Store.all.order('name_store ASC')
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



  private

    def item_params
      params.require(:item).permit(:resize_to_fit, :name_item, :description_item, :price, :image_to_upload, :store_id, :category_id)
    end
end
