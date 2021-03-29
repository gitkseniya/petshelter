class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.boolean :available
      t.integer :rating
      t.string :name
      t.string :author

      t.timestamps
    end
  end
end
