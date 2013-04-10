class AddPlanetIdColumnToSatellitesTable < ActiveRecord::Migration
  def change
    add_column :satellites, :planet_id, :integer
  end
end
