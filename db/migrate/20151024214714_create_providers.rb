class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :name
      t.string :npi
      t.string :specialty
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
