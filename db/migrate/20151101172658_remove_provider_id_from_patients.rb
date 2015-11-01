class RemoveProviderIdFromPatients < ActiveRecord::Migration
  def change
  	remove_column :patients, :provider_id, :integer
  end
end
