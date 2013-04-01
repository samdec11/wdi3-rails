class CreateUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.decimal :balance
      t.boolean :is_admin
      t.timestamps
    end
  end
end