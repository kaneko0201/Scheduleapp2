class ChangeStartDateAndEndDateToDateInSchedules < ActiveRecord::Migration[6.1]
  def change
    change_column :schedules, :startDate, :date
    change_column :schedules, :endDate, :date
  end
end
