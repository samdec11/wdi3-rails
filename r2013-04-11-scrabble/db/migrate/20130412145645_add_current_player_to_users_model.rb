class AddCurrentPlayerToUsersModel < ActiveRecord::Migration
  def change
    add_column :games, :current_player, :string
  end
end
