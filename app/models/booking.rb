class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :offer
  enum status: [:in_progress, :accepted, :completed]
end
