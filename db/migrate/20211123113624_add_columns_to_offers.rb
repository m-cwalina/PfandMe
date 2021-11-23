class AddColumnsToOffers < ActiveRecord::Migration[6.0]
  def change
    add_column :offers, :plastic_bottles, :string
    add_column :offers, :glass_bottles, :string
    add_column :offers, :crates, :string
    add_column :offers, :tip, :integer
  end
end
