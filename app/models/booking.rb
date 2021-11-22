class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :offer
  enum status: [:pending, :accepted]
end
