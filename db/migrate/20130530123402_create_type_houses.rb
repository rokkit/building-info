class CreateTypeHouses < ActiveRecord::Migration
  def change
    create_table :type_houses do |t|
      t.string :name

      t.timestamps
    end
  end
end
