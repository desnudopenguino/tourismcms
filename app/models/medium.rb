class Medium < ActiveRecord::Base
  attr_accessible :content, :media_type
  
  belongs_to :multimedia, :polymorphic => true
  has_many :armedia
end
