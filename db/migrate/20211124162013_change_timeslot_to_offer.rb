class ChangeTimeslotToOffer < ActiveRecord::Migration[6.0]
  def change
    change_column :offers, :timeslot, :string
  end
end
