class AddItemsIdAndStoresIdToShopLists < ActiveRecord::Migration
  def change
    add_column :shop_lists, :items_id, :integer
    add_column :shop_lists, :stores_id, :integer
  end
end
