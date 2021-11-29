class Offer < ApplicationRecord
  belongs_to :user
  has_one :booking, dependent: :destroy

  TIMESLOT = ['09.00 - 10.00', '10.00 - 11.00', '11.00 - 12.00', '12.00 - 13.00', '13.00 - 14.00', '14.00 - 15.00', '15.00 - 16.00', '16.00 - 17.00', '17.00 - 18.00', '18.00 - 19.00']

  PLASTICBOTTLES = ['10 - 15 bottles', '15 - 20 bottles', '20 - 25 bottles', '25 - 30 bottles', '30 - 35 bottles', '35 - 40 bottles', '40 - 45 bottles', '45 - 50 bottles']

  GLASSBOTTLES = ['10 - 15 bottles', '15 - 20 bottles', '20 - 25 bottles']

  CRATES = ['0-2', '3-5']

  TIP = [0, 1, 2, 5, 10, 20, 50]
end
