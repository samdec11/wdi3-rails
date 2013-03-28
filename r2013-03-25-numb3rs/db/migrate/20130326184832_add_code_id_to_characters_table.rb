class AddCodeIdToCharactersTable < ActiveRecord::Migration
  def change
    add_column :characters, :code_id, :integer
  end
end
