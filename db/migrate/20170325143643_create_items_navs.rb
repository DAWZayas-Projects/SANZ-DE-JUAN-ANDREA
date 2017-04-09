class CreateItemsNavs < ActiveRecord::Migration
  def change
    create_table :items_navs do |t|

      t.timestamps null: false
    end
  end
end
