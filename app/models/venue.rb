class Venue < ActiveRecord::Base
  has_many :tours
  has_many :attractions
  has_many :assets
  attr_accessible :description, :name
end
