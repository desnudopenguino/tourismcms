class Medium < ActiveRecord::Base
  attr_accessible :attraction_id, :content, :type
  
  belongs_to :attraction
end
