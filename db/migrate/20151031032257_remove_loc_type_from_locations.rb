class RemoveLocTypeFromLocations < ActiveRecord::Migration
  def change
    remove_column :locations, :loc_type, :integer
  end
end
