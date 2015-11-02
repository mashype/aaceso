class AddIndexToRelationship < ActiveRecord::Migration
  def change
  	add_reference :patientrelations, :patientrelationtypes, index: true, foreign_key: true
  end
end
