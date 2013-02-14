class CreateAuthorsTable < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.date :dob
      t.string :place_of_birth
      t.date :dod
      t.string :place_of_death
      t.text :image
      t.timestamps
    end
  end
end
