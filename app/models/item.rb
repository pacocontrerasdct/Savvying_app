class Item < ActiveRecord::Base
  belongs_to :stores
  has_many :stores
  has_many :shop_lists, through: :stores, dependent: :destroy
end
