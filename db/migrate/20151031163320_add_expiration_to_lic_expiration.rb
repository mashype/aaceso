class AddExpirationToLicExpiration < ActiveRecord::Migration
  def change
    add_column :lic_expirations, :expiration_year, :string
  end
end
