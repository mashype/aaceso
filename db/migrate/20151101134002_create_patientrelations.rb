class CreatePatientrelations < ActiveRecord::Migration
  def change
    create_table :patientrelations do |t|
      t.integer :relationtype
    	t.belongs_to :provider, index: true
     	t.belongs_to :patient, index: true
      t.timestamps null: false
    end
  end
end
