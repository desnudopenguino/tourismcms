class Attraction < ActiveRecord::Base
  attr_accessible :description, :latitude, :longitude, :radius, :title, :tour_id
  
  has_many :attractions_tours
end
