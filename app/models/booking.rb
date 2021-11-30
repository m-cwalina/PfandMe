class Booking < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :offer, dependent: :destroy
  enum status: [:in_progress, :accepted, :completed]
end
