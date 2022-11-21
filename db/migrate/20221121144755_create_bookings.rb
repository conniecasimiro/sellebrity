class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.date :booking_date
      t.boolean :accepted
      t.references :user, foreign_key: true
      t.references :celeb, foreign_key: true

      t.timestamps
    end
  end
end
