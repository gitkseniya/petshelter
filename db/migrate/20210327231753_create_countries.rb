class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.string :name
      t.integer :population
      t.integer :gdp
      t.boolean :has_monarch

      t.timestamps
    end
  end
end
