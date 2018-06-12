class AddCarToSchedules < ActiveRecord::Migration[5.2]
  def change
    add_reference :schedules, :car, foreign_key: true
  end
end
