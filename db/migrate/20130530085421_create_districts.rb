class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.string :name
      t.references :town

      t.timestamps
    end
    add_index :districts, :town_id
  end
end
