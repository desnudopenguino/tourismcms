class Asset < ActiveRecord::Base
  attr_accessible :location, :assetType, :venue_id
  
  belongs_to :venue
end
