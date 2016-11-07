class User < ApplicationRecord

  validates :email, uniqueness: true
  validates :first_name, :last_name, :email, :phone, presence: true

  has_many :bookings
  has_many :reviews
  has_many :planes
end
