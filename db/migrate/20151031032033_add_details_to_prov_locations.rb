class AddDetailsToProvLocations < ActiveRecord::Migration
  def change
    add_column :prov_locations, :loc_type, :integer
  end
end
