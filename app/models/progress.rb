class Progress < ActiveRecord::Base
  attr_accessible :level
  
  has_many :tour_visitors
end
