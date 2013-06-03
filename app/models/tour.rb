class Tour < ActiveRecord::Base
  attr_accessible :description, :id, :location_id, :title
  
  #belongs_to :location
  belongs_to :venue
  has_and_belongs_to_many :attractions
end
