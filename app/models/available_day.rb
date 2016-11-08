class AvailableDay < ApplicationRecord

  validates :date, uniqueness: { scope: :plane_id }
  validates :date, :plane_id, presence: true

  belongs_to :plane
end
