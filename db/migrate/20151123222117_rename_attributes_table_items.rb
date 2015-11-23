class RenameAttributesTableItems < ActiveRecord::Migration
  def change
    # rename_column :table, :old, :new
    rename_column :items, :name, :name_item
    rename_column :items, :description, :description_item
    rename_column :items, :image, :image_item
  end
end
