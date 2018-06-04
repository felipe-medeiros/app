class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :plate
      t.string :description
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
