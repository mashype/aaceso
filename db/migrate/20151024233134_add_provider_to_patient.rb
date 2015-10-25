class AddProviderToPatient < ActiveRecord::Migration
  def change
    add_reference :patients, :provider, index: true, foreign_key: true
  end
end
