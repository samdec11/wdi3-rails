class AddDefaultsToLatAndLong < ActiveRecord::Migration
  def change
    change_column :products, :lat, :float, :default => 0
    change_column :products, :long, :float, :default => 0
  end
end
