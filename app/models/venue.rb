class Venue < ActiveRecord::Base
  attr_accessible :description, :name
  
  has_many :tours
  has_many :attractions
  has_many :assets
  has_many :venue_visitors
  
  has_many :media, :as => :multimedia
end
