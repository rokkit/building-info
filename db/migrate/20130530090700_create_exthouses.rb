class CreateExthouses < ActiveRecord::Migration
  def change
    create_table :exthouses do |t|
      t.references :serviceorg
      t.string :name
      t.date :byear
      t.boolean :overhault
      t.boolean :elevator
      t.boolean :consierge
      t.references :user

      t.timestamps
    end
    add_index :exthouses, :serviceorg_id
    add_index :exthouses, :user_id
  end
end
