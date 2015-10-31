class CreateProvLocations < ActiveRecord::Migration
  def change
    create_table :prov_locations do |t|
    	t.belongs_to :provider, index: true
			t.belongs_to :location, index: true
      t.timestamps null: false
    end
  end
end
