class Town < ActiveRecord::Base
  belongs_to :region
  attr_accessible :name, :region_id
end
