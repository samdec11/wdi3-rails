class CreateContactsTable < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first
      t.string :last
      t.date :dob
      t.string :phone
      t.string :email
      t.timestamps
    end
  end
end
