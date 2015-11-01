class DropProvLocations < ActiveRecord::Migration
  def change
  	drop_table :prov_locations
  end
end
