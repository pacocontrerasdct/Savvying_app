class RenameAttributesTableStores < ActiveRecord::Migration
  def change
    # rename_column :table, :old, :new
    rename_column :stores, :name, :name_store
    rename_column :stores, :description, :description_store
  end
end
