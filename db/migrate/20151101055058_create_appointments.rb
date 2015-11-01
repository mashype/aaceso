class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
    	t.integer :appointmenttype
    	t.boolean :apptconfirmed
    	t.boolean :apptcompleted
    	t.belongs_to :provider, index: true
     	t.belongs_to :patient, index: true
      t.timestamps null: false
    end
  end
end
