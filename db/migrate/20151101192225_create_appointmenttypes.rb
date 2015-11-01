class CreateAppointmenttypes < ActiveRecord::Migration
  def change
    create_table :appointmenttypes do |t|
      t.string :apptype

      t.timestamps null: false
    end
  end
end
