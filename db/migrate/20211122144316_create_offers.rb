class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.integer :quantity
      t.string :type
      t.string :transportability
      t.time :timeslot
      t.text :comment
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
