class Visitor < ActiveRecord::Base
  attr_accessible :oid

  has_many :venue_visitors
end
