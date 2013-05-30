class CreateTowns < ActiveRecord::Migration
  def change
    create_table :towns do |t|
      t.string :name
      t.references :region

      t.timestamps
    end
    add_index :towns, :region_id
  end
end
