class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.string :post_code
      t.text :description
      t.string :phone
      t.string :open_hours

      t.timestamps null: false
    end
  end
end
