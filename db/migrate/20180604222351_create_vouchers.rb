class CreateVouchers < ActiveRecord::Migration[5.2]
  def change
    create_table :vouchers do |t|
      t.string :code
      t.float :discount
      t.references :business, foreign_key: true

      t.timestamps
    end
  end
end
