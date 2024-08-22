class Schedule < ApplicationRecord
  validates :title, presence: true, length: {maximum:20}
  validates :startDate, presence: true
  validates :endDate, presence: true
  validates :memo, length: {maximum:500}
  validate :endAfterStart

  private

  def endAfterStart
    return if endDate.blank? || startDate.blank?

    if endDate < startDate
      errors.add(:endDate, "は開始日以降の日付としてください")
    end
  end

end
