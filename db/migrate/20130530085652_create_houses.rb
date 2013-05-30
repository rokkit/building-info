class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.references :street
      t.references :metro
      t.integer :number
      t.integer :building

      t.timestamps
    end
    add_index :houses, :street_id
    add_index :houses, :metro_id
  end
end
