class Venue < ActiveRecord::Base
  has_many :tours
  has_many :attractions
  has_many :assets
  has_one :media, :as => :multimedia
  attr_accessible :description, :name
end