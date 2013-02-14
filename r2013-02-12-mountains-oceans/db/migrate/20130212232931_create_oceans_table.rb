class CreateOceansTable < ActiveRecord::Migration
  def change
    create_table :oceans do |t|
      t.string :name
      t.text :image
      t.float :area
      t.float :volume
      t.float :max_depth
      t.float :max_width
      t.timestamps
    end
  end
end
