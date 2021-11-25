class User < ApplicationRecord
  has_one_attached :photo
  has_many :offers, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :bookings_as_owner, through: :offers, source: :bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
