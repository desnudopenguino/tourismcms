class TourVisitor < ActiveRecord::Base
  attr_accessible :progress, :tour_id, :visitor_id
  belongs_to :tour
  belongs_to :visitor
end
