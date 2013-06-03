class Venue < ActiveRecord::Base
  has_many :tours
  has_many :attractions
  attr_accessible :description, :name
end
