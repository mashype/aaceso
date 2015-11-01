class AddProviderToSpecialty < ActiveRecord::Migration
  def change
    add_reference :specialties, :provider, index: true, foreign_key: true
  end
end
