class House < ActiveRecord::Base
  belongs_to :metro
  belongs_to :exthouse
  attr_accessible :building, :number, :floor,:count_rooms,:area, :living_area, :kitchen_area, :height, :balcon,
    :metro_id, :exthouse_id
end
