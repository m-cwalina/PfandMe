class User < ApplicationRecord
  has_many :offers
  has_many :bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates_length_of :phone_number, minimum: 9
  validates :first_name, presence: true
  validates :last_name, presence: true
end
