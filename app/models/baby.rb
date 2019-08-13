class Baby < ApplicationRecord
  belongs_to :user
  validates :first_name, presence: { message: "Enter a cutie name for your cutie baby" }, format: { with: /[a-zA-Z]/ }
  validates :title, presence: { message: "Enter a cutie nickname for your cutie baby" }, format: { with: /[a-zA-Z]/ }
  validates :gender, presence: { message: "Your baby can be a male a female or ?" }, inclusion: { in: ["boy", "girl", "other?"] }
  validates :description, presence: { message: "Please enter at least 10 characters :)" }, length: { minimum: 10 }
  validates :age, presence: true
  validates :price_per_day, presence: { message: "Enter a number, don't be greedy but don't be cheap either, you are renting your baby ffs" }
  validates_numericality_of :price_per_day
end
