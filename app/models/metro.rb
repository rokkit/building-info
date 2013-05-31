class Metro < ActiveRecord::Base
  belongs_to :town
  attr_accessible :name, :town_id
end
