class AddVenueIdToTour < ActiveRecord::Migration
  def change
    add_column :tours, :venue_id, :integer
  end
end
