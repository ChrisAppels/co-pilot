class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, uniqueness: true
  validates :first_name, :last_name, :email, :phone, presence: true

  has_many :bookings
  has_many :reviews
  has_many :planes
end
