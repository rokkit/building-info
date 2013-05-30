class District < ActiveRecord::Base
  belongs_to :town
  attr_accessible :name
end
