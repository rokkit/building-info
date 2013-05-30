class Exthouse < ActiveRecord::Base
  belongs_to :serviceorg
  belongs_to :type_of_house
  belongs_to :material
  belongs_to :stair
  belongs_to :anentrance
  belongs_to :user
  attr_accessible :byear, :consierge, :elevator, :name, :overhault, :hfirstfloor
end
