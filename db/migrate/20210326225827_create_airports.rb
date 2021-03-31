class CreateAirports < ActiveRecord::Migration[5.2]
  def change
    create_table :airports do |t|
      t.string :name
      t.integer :terminals
      t.boolean :international_hub

      t.timestamps
    end
  end
end
