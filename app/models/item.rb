class Item < ActiveRecord::Base
  belongs_to :stores
  # has_many :stores
  # has_many :shop_lists, through: :stores, dependent: :destroy
  has_many :shop_lists, through: :stores
  mount_uploader :image_to_upload, ItemImageUploader, mount_on: :image_to_upload_filename
end