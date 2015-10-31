class CreateLicExpirations < ActiveRecord::Migration
  def change
    create_table :lic_expirations do |t|
    	t.belongs_to :provider, index: true
     	t.belongs_to :license, index: true
      t.timestamps null: false
    end
  end
end
