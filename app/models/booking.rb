class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :baby
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :price, presence: true

  validate :baby_available?

  def baby_available?
    errors.add(:start_date, "Baby is already taken at these dates") unless baby.available?(start_date, end_date)
  end
end
