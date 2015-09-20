class Store < ActiveRecord::Base
  has_many :items
  has_many :shop_lists, through: :items, dependent: :destroy
end
