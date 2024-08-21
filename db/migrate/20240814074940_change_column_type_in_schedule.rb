class ChangeColumnTypeInSchedule < ActiveRecord::Migration[6.1]
  def change
    change_column :schedules, :startDate, :time
    change_column :schedules, :endDate, :time
  end
end
