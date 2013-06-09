class AttractionsTour < ActiveRecord::Base
  attr_accessible :attraction_id, :media, :mediatype, :tour_id
  
  belongs_to :attraction
  belongs_to :tour
end
