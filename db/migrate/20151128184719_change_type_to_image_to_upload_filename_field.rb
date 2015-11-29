class ChangeTypeToImageToUploadFilenameField < ActiveRecord::Migration
  def up
    change_column :items, :image_to_upload_filename, :text
  end
  def down
    change_column :items, :image_to_upload_filename, :string
  end
end
