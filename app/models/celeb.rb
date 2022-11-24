class Celeb < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings

  include PgSearch::Model
  pg_search_scope :search_by_name_and_service,
    against: [ :first_name, :last_name, :service ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
