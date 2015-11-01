class Removeappointmenttypefromappointments < ActiveRecord::Migration
  def change
  	remove_column :appointments, :appointmenttype, :string
  end
end
