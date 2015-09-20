class CreateShopLists < ActiveRecord::Migration
  def change
    create_table :shop_lists do |t|

      t.timestamps null: false
    end
  end
end
