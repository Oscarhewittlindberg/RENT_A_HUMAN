class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :title
      t.string :location
      t.date :date
      t.integer :duration, default: 1
      t.text :description
      t.integer :price
      t.references :actor, foreign_key: true
      t.references :renter, foreign_key: { to_table: :users}

      t.timestamps
    end
  end
end
