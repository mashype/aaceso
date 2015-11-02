class RemoveOldRelationTypeFromPatientRelations < ActiveRecord::Migration
  def change
  	remove_column :patientrelations, :relationtype, :integerß
  end
end
