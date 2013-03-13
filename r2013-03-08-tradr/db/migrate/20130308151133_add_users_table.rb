class AddUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.decimal :balance
      t.string :password_digest
      t.timestamps
    end
  end
end
