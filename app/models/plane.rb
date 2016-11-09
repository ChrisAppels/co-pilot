class Plane < ApplicationRecord

  validates  presence: true

  has_many :bookings
  has_many :reviews
  has_many :available_days
  belongs_to :user

   mount_uploader :photo, PhotoUploader
end
