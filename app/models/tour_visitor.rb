class TourVisitor < ActiveRecord::Base
  attr_accessible :progress, :tour_id, :venue_visitor_id
  
  belongs_to :tour
  belongs_to :venue_visitor

  has_many :time_visitors
end
