class Review < ApplicationRecord

  validates :content, :stars, :user_id, :plane_id, presence: true

  belongs_to :user
  belongs_to :plane
end
