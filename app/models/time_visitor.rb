class TimeVisitor < ActiveRecord::Base
  attr_accessible :latitude, :longitude, :tour_visitor_id
  
  belongs_to :tour_visitor
end
