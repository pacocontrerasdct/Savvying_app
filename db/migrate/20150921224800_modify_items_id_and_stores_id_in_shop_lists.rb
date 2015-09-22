class ModifyItemsIdAndStoresIdInShopLists < ActiveRecord::Migration
  def change
    rename_column :shop_lists, :items_id, :item_id
    rename_column :shop_lists, :stores_id, :store_id
  end
end
