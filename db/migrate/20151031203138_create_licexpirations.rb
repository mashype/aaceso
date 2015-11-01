class CreateLicexpirations < ActiveRecord::Migration
  def change
    create_table :licexpirations do |t|
    	t.string :expiration_year
    	t.belongs_to :provider, index: true
     	t.belongs_to :license, index: true
      t.timestamps null: false
    end
  end
end
