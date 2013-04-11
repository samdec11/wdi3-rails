class MakeDefaultIsOnlineFalse < ActiveRecord::Migration
  def change
    change_column :users, :is_online, :boolean, :default => false
  end
end
