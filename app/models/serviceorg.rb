class Serviceorg < ActiveRecord::Base
  belongs_to :house
  attr_accessible :adress, :description, :name, :typeofservice
end
