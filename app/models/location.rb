class Location < ActiveRecord::Base
  attr_accessible :description, :double, :id, :latitude, :longitude, :radius, :title
  
  has_many :tours
end
