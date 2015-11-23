class StoresController < ApplicationController

  def index
    @stores = Store.all.order('name ASC')
  end

  def new
    @store = Store.new
  end

  def create
    store = Store.new(store_params)
    if store.save
      flash[:notice] = 'New store created successfully!'
      redirect_to stores_path
    else
      flash.now[:error] = "Error: #{store.errors.full_messages}"
      render :new
    end
  end

  def show
    @store = Store.find(params[:id])
  end

  def edit
    @store = Store.find(params[:id])
  end

  def update
    store = Store.find(params[:id])
    if store.update(store_params)
      flash[:notice] = 'Store details have been updated successfully!'
      redirect_to store_path
    else
      flash.now[:error] = "Error: #{store.errors.full_messages}"
      render :new
    end
  end

  def destroy
    store = Store.find(params[:id]).destroy
    if store
      flash[:notice] = 'Store deleted successfully!'
      redirect_to stores_path
    else
      flash.now[:error] = "Error: #{store.errors.full_messages}"
      render :edit
    end
  end

  def store_params
    params.require(:store).permit(:name_store, :description_store, :post_code, :phone, :open_hours)
  end

end
