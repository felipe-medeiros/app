class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :name
      t.float :price
      t.text :description
      t.references :business, foreign_key: true

      t.timestamps
    end
  end
end
