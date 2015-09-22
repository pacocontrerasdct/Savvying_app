class ModifyCategoryColumnTypeInItemsTable < ActiveRecord::Migration
  def change
    def self.up
      change_table :items do |t|
        t.change :category_id, :integer
      end
    end
    def self.down
      change_table :items do |t|
        t.change :category_id, :string
      end
    end
  end
end
