class AttractionTour < ActiveRecord::Base
  attr_accessible :attraction_id, :description, :tour_order, :radius, :tour_id
  
  belongs_to :tour
  belongs_to :attraction
  has_many :media, :as => :multimedia
  has_many :messages
  has_one :arcones

  def get_attraction_image( attraction_tour )
    if((!attraction_tour.media.where(media_type: "image").exists?) and (attraction_tour.attraction.media.where(media_type: "image").exists?))
      attraction_tour.attraction
    else
      attraction_tour
    end
  end
end
