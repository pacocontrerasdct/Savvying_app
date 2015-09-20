class Item < ActiveRecord::Base
  has_many :stores
  has_many :shop_lists, through: :stores, dependent: :destroy
end
