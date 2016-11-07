class Booking < ApplicationRecord

  validates :start_date, :end_date, :user_id, :plane_id, presence: true

  belongs_to :user
  belongs_to :plane
end
