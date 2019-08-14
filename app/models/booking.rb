class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :baby
  validates :start_date, presence: true
  validates :end_date, presence: true
end
