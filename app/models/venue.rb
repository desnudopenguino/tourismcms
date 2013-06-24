class Venue < ActiveRecord::Base
  attr_accessible :description, :name
  
  has_many :tours
  has_many :attractions
  has_many :assets
  
  has_one :media, :as => :multimedia
  accepts_nested_attributes_for :media
  attr_accessible :media_attributes, :media, :content, :type
end