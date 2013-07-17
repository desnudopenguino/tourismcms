class RenameOrderAttractionTour < ActiveRecord::Migration
  def up
    rename_column :attraction_tours, :order, :tour_order
  end

  def down
  end
end
