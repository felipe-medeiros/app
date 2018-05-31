class AddAddressToBusinesses < ActiveRecord::Migration[5.2]
  def change
    add_column :businesses, :city, :string
    add_column :businesses, :state, :string
    add_column :businesses, :neighborhood, :string
    add_column :businesses, :address, :string
    add_column :businesses, :zipcode, :string
  end
end
