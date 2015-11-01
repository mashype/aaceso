class CreateLicenses < ActiveRecord::Migration
  def change
    create_table :licenses do |t|
      t.string :state

      t.timestamps null: false
    end
  end
end
