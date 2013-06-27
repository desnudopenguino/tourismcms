class Changevisitoridtovenuevisitoridfortourvisitor < ActiveRecord::Migration
  def up
    rename_column :tour_visitors, :visitor_id, :venue_visitor_id
  end

  def down
  end
end
