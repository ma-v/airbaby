class Baby < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :first_name, presence: { message: "Enter a cutie name for your cutie baby" }, format: { with: /[a-zA-Z]/ }
  validates :title, presence: { message: "Enter a cutie nickname for your cutie baby" }, format: { with: /[a-zA-Z]/ }
  validates :gender, presence: { message: "Your baby can be a male a female or ?" }, inclusion: { in: ["boy", "girl", "other?"] }
  validates :description, presence: { message: "Please enter at least 10 characters :)" }, length: { minimum: 10 }
  validates :age, presence: true
  validates :price_per_day, presence: { message: "Enter a number, don't be greedy but don't be cheap either, you are renting your baby ffs" }
  validates :photo, presence: { message: "Please put a pic of your cutie baby" }
  validates_numericality_of :price_per_day
  include PgSearch
  pg_search_scope :global_search,
    against: [ :address],
    using: {
      tsearch: { prefix: true }
    }

  def self.geocoded
    select { |baby| baby.user.geocoded? }
  end

  def available?(from_date, to_date)
    bookings.where(start_date: from_date..to_date).or(bookings.where(end_date: from_date..to_date)).blank?
  end
end
