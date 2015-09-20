class StoresController < ApplicationController

  def index

    @stores = Store.all.order('name ASC')


  end

  def show


  end

  def new


  end







end
