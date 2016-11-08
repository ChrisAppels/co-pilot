class Plane < ApplicationRecord

  validates :description, :model, :image, :user, :capacity, :price, presence: true

  has_many :bookings
  has_many :reviews
  has_many :available_days
  belongs_to :user
end
