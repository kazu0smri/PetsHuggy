class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.references :user, index: true, foreign_key: true
      t.references :listing, index: true, foreign_key: true
      t.datetime :start_data
      t.datetime :end_data
      t.integer :price_pernight
      t.integer :total_price

      t.timestamps null: false
    end
  end
end
