class AddLocationToProvider < ActiveRecord::Migration
  def change
    add_reference :providers, :location, index: true, foreign_key: true
  end
end
