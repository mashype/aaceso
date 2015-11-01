class CreateUsertypes < ActiveRecord::Migration
  def change
    create_table :usertypes do |t|
      t.string :usertypename

      t.timestamps null: false
    end
  end
end
