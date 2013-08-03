class Arcone < ActiveRecord::Base
  attr_accessible :attraction_tour_id, :end, :start

  belongs_to :attraction_tour
end
