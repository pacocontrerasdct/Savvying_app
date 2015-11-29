class ChangeNameAndTypeToImageItemField < ActiveRecord::Migration
  def change
    rename_column :items, :image_item, :image_to_upload_filename
  end
  def up
    change_column :items, :image_to_upload_filename, :text
  end
  def down
    change_column :items, :image_to_upload_filename, :string
  end
end
