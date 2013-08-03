class Message < ActiveRecord::Base
  attr_accessible :attraction_tour_id, :content, :order

  belongs_to :attraction_tour
end
