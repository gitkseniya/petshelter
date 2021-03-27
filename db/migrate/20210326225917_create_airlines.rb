class CreateAirlines < ActiveRecord::Migration[5.2]
  def change
    create_table :airlines do |t|
      t.string :name
      t.integer :flight_number
      t.boolean :domestic_flight
      t.references :airport, foreign_key: true

      t.timestamps
    end
  end
end
