class AddFieldsToHouses < ActiveRecord::Migration
  def change
    add_column :houses, :floor, :integer
     add_column :houses, :count_rooms, :integer
 add_column :houses, :area, :float #площадь в метрах квадратных
  add_column :houses, :living_area, :float #жилая площадь
  add_column :houses, :kitchen_area, :float #площадь кухни
  add_column :houses, :height, :float #высота потолка
  add_column :houses, :balcon, :boolean
  add_column :houses, :exthouse_id, :integer
  end
end
