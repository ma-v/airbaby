class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :price
      t.datetime :start_date
      t.datetime :end_date
      t.references :user, foreign_key: true
      t.references :baby, foreign_key: true

      t.timestamps
    end
  end
end
