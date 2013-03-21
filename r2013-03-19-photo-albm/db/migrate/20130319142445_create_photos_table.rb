class CreatePhotosTable < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :name
      t.string :url
      t.integer :album_id
      t.timestamps
    end
  end
end
