class AddCostColumnToSongsTable < ActiveRecord::Migration
  def change
    add_column :songs, :cost, :decimal, :default => 0.99
  end
end
