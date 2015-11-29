class AddImageToUploadToItems < ActiveRecord::Migration
  def change
    add_column :items, :image_to_upload, :string
  end
end
