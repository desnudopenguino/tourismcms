class Attraction < ActiveRecord::Base
  attr_accessible :description, :latitude, :longitude, :radius, :title, :tour_id
  
  belongs_to :venue
  has_many :attraction_tours
  has_one :media, :as => :multimedia
end
