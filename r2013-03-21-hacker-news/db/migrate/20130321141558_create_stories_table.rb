class CreateStoriesTable < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.string :url
      t.integer :points
      t.timestamps
    end
  end
end
