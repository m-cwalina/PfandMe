class User < ApplicationRecord
  has_one_attached :photo
  has_many :offers
  # has_many :bookings, through: :offers
  has_many :bookings_as_owner, through: :offers, source: :bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
