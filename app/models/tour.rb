class Tour < ActiveRecord::Base
  attr_accessible :description, :id, :location_id, :title
  
  belongs_to :location
  has_many :attractions
end
