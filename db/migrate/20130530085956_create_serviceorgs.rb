class CreateServiceorgs < ActiveRecord::Migration
  def change
    create_table :serviceorgs do |t|
      t.string :name
      t.text :adress
      t.text :description
      t.string :typeofservice
      t.references :house

      t.timestamps
    end
    add_index :serviceorgs, :house_id
  end
end
