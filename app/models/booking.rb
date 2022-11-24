class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :celeb
  validates :booking_date, presence: true
  validates :duration, presence: true
  validates :description, presence: true
  validates :description, length: { maximum: 30, too_long: "%30 characters is the maximum allowed" }
end
