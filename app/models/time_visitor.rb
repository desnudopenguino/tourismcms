class TimeVisitor < ActiveRecord::Base
  attr_accessible :latitude, :longitude, :tour_visitor_id
  
  belongs_to :tour_visitor

  def self.as_csv
    CSV.generate do | csv |
      csv << column_names
      all.each do | item |
        csv << item.attributes.values_at(*column_names)
      end
    end
  end
end
