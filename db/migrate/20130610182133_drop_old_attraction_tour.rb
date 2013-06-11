class DropOldAttractionTour < ActiveRecord::Migration
  def up
    drop_table :attraction_tours
  end

  def down
  end
end
