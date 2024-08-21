class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.string :title
      t.string :startDate
      t.string :endDate
      t.string :allDay
      t.string :memo

      t.timestamps
    end
  end
end
