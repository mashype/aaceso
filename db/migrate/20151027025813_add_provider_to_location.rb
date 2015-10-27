class AddProviderToLocation < ActiveRecord::Migration
  def change
    add_reference :locations, :provider, index: true, foreign_key: true
  end
end
