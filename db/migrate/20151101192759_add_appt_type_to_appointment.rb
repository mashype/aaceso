class AddApptTypeToAppointment < ActiveRecord::Migration
  def change
    add_reference :appointments, :appointmenttype, index: true, foreign_key: true
  end
end
