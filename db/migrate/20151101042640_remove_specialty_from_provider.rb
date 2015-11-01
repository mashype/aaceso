class RemoveSpecialtyFromProvider < ActiveRecord::Migration
  def change
  	remove_column :providers, :specialty
  end
end
