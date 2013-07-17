class Attraction < ActiveRecord::Base
  attr_accessible :description, :latitude, :longitude, :title, :tour_id
  
  belongs_to :venue
  has_many :attraction_tours
  has_many :media, :as => :multimedia
end
