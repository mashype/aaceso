class RemoveProvdierFromSpecialty < ActiveRecord::Migration
  def change
  	remove_column :specialties, :provider_id
  end
end
