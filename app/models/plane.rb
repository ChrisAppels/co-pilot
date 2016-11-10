class Plane < ApplicationRecord

  validates :description, :model, :photo, :user, :capacity, :price, presence: true
  scope :query, lambda { |query|
    where('description || model iLIKE ?', "%#{query}%")
  }
  has_many :bookings
  has_many :reviews
  has_many :available_days
  belongs_to :user

   mount_uploader :photo, PhotoUploader
end

