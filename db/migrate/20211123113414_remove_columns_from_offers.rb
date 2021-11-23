class RemoveColumnsFromOffers < ActiveRecord::Migration[6.0]
  def change
    remove_column :offers, :type, :string
    remove_column :offers, :quantity, :integer
  end
end
