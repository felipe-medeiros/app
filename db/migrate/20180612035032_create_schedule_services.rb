class CreateScheduleServices < ActiveRecord::Migration[5.2]
  def change
    create_table :schedule_services do |t|
      t.references :schedule, foreign_key: true
      t.references :service, foreign_key: true

      t.timestamps
    end
  end
end
