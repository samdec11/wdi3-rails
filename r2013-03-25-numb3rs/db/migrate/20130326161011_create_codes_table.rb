class CreateCodesTable < ActiveRecord::Migration
  def change
    create_table :codes do |t|
      t.string :url
      t.string :symbol
      t.string :hex
      t.timestamps
    end
  end
end
