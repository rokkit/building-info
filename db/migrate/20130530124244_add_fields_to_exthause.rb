class AddFieldsToExthause < ActiveRecord::Migration
  def change
    add_column :exthouses, :type_of_house_id, :integer
    add_column :exthouses, :material_id, :integer
add_column :exthouses, :chute, :boolean
add_column :exthouses, :stair_id, :integer
add_column :exthouses, :basement, :boolean
add_column :exthouses, :hfirstfloor, :float
add_column :exthouses, :anentrance_id, :integer
  end
end
