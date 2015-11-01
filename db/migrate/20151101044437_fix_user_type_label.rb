class FixUserTypeLabel < ActiveRecord::Migration
  def change
  	rename_column :users, :usertype, :usertype_id
  end
end
