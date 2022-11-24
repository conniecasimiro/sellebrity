class ChangeBookingDateDatatype < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :duration, :integer
    add_column :bookings, :description, :string
  end
end
