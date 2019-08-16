class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :baby
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :price, presence: true
  validate :end_date_cannot_be_lower_than_start_date
  validate :baby_available?

  def baby_available?
    errors.add(:start_date, "Baby is already taken at these dates") unless baby.available?(start_date, end_date)
  end

  def end_date_cannot_be_lower_than_start_date
    if start_date > end_date
      errors.add(:end_date, "can't be before starting date")
    end
  end
end

