class CreateCharactersTable < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :hex
      t.string :symbol
      t.timestamps
    end
  end
end
