class CreatePatientrelationtypes < ActiveRecord::Migration
  def change
    create_table :patientrelationtypes do |t|

      t.string :relationship

      t.timestamps null: false
    end
  end
end
