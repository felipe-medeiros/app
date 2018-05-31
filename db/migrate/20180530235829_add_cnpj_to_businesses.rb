class AddCnpjToBusinesses < ActiveRecord::Migration[5.2]
  def change
    add_column :businesses, :cnpj, :string
  end
end
