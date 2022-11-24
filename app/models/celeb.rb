class Celeb < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :service, presence: true
  validates :bio, presence: true
  validates :photo_url, presence: true


  include PgSearch::Model
  pg_search_scope :search_by_name_and_service,
    against: [ :first_name, :last_name, :service ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
