class CreateMetros < ActiveRecord::Migration
  def change
    create_table :metros do |t|
      t.string :name
      t.references :town

      t.timestamps
    end
    add_index :metros, :town_id
  end
end
