class DropLicExpirations < ActiveRecord::Migration
  def change
  	drop_table :lic_expirations
  end
end
