class Visitor < ActiveRecord::Base
  attr_accessible :oid
  has_many :tour_visitors
end
