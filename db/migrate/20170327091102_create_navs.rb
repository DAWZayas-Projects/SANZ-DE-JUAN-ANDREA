class CreateNavs < ActiveRecord::Migration
  def change
    create_table :navs do |t|

      t.timestamps null: false
    end
  end
end
