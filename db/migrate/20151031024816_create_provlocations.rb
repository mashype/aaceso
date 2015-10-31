class CreateProvlocations < ActiveRecord::Migration
  def change
    create_table :provlocations do |t|
      t.integer :location_type
      t.belongs_to :provider, index: true
      t.belongs_to :location, index: true      
      t.timestamps null: false
    end
  end
end
