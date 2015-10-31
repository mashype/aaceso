class AddSpecialtyToProvider < ActiveRecord::Migration
  def change
    add_reference :providers, :specialties, index: true, foreign_key: true
  end
end
