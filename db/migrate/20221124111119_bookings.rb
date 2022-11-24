class Bookings < ActiveRecord::Migration[7.0]
  def change
    change_column :bookings, :booking_date, :datetime
  end
end
