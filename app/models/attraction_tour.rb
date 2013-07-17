class AttractionTour < ActiveRecord::Base
  attr_accessible :attraction_id, :description, :tour_order, :radius, :tour_id
  
  belongs_to :tour
  belongs_to :attraction
  has_many :media, :as => :multimedia
end
