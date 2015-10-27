class RemoveLocationFromProvider < ActiveRecord::Migration
  def change
    remove_reference :providers, :location, index: true, foreign_key: true
  end
end
