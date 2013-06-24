class VenueVisitor < ActiveRecord::Base
  attr_accessible :venue_id, :visitor_id
  
  belongs_to :venue
  belongs_to :visitor
end
