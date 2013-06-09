class VenueAsset < ActiveRecord::Base
  belongs_to :venue
  attr_accessible :asset, :type, :venue_id
end
