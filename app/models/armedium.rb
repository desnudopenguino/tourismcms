class Armedium < ActiveRecord::Base
  attr_accessible :alpha, :arcone_end, :arcone_start, :medium_id, :rgb, :sound_track
  
  belongs_to :medium
end
